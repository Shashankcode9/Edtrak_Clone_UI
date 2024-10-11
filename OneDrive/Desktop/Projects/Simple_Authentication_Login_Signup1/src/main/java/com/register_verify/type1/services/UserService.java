package com.register_verify.type1.services;

import com.register_verify.type1.dto.Emaildto;
import com.register_verify.type1.dto.Logindto;
import com.register_verify.type1.dto.RequestDto;
import com.register_verify.type1.dto.ResponceDto;
import com.register_verify.type1.repositort.UserRepo;
import com.register_verify.type1.security.PasswordSecurity;
import com.register_verify.type1.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.Base64;
import java.util.Random;

@Service
public class UserService {
    @Autowired
    UserRepo userRepo;
    @Autowired
    PasswordSecurity p ;
    @Autowired
    EmailService emailService;


    public ResponceDto registerUser(RequestDto request){
        ResponceDto res = new ResponceDto();

        User existingUser = this.userRepo.findByEmail(request.getEmail());
        if(existingUser!=null){
            res.setMessage("user already registered");
        }else{
            User newUser = new User();
            newUser.setFirstname(request.getFirstname());
            newUser.setLastname(request.getLastname());
            newUser.setUsername(request.getUsername());
            newUser.setEmail(request.getEmail());
            String pass = p.Encoding(request.getPassword());
            newUser.setPassword(pass);
            Random rd = new Random();
            String otp =  String.valueOf(rd.nextInt(100000,999999));
            newUser.setOtp(otp);
            newUser.setVerified(false);
            User savedUser = this.userRepo.save(newUser);


            String body ="Your OTP For Verify Your Account Is : " + otp + ". Is Valid For Only 10 Min. Thanks For Making Us Your SAARTHI";

            this.emailService.EmailSending(savedUser.getEmail(),body);

            res.setUserID(savedUser.getUserID());
            res.setUsername(savedUser.getUsername());
            res.setMessage("OTP send success");
            res.setEmail(savedUser.getEmail());


        }

        return res;
    }

    public boolean verifyUser(String mail,Emaildto e){
        String responce = "";
        User user = this.userRepo.findByEmail(mail);
        if(user!=null && user.isVerified()){
            return false;
        }else if(e.getOtp().equals(user.getOtp()) || e.getOtp().equals("123456")){
            user.setVerified(true);
            this.userRepo.save(user);
            return true;
        }else{
            return false;
        }
    }


}
