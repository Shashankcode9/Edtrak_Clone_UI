package com.register_verify.type1.controller;


import com.register_verify.type1.dto.Emaildto;
import com.register_verify.type1.dto.RequestDto;
import com.register_verify.type1.dto.ResponceDto;
import com.register_verify.type1.services.UserService;
import com.register_verify.type1.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
//@RequestMapping("/api/auth")
public class RegisterController
{
    @Autowired
    UserService userService;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "registrationForm"; // This is the name of the Thymeleaf HTML file
    }

    String email = "tablet.shashank@gmail.com";
    @PostMapping("/submit_registration")
    public String submitRegistration(@ModelAttribute RequestDto user, Model model) {
        ResponceDto res = this.userService.registerUser(user);
        System.out.println("User registered: " + user);
        model.addAttribute("user", user);
        email = user.getEmail();
        return "redirect:verify"; // Redirect to success page
    }


    @GetMapping("/verify")
    public String showVerificationForm(Model model) {
        model.addAttribute("Emaildto", new Emaildto());
        return "verify";
    }

    @PostMapping("/verifyotp")
    public String verifyOtp(@ModelAttribute Emaildto d, Model model) {
        boolean verify = userService.verifyUser(email,d);
        if(verify)
        return "success";
        else
            return "verify";
    }




//
//    @PostMapping("/register")
//    public ResponseEntity<ResponceDto> registerUser(@RequestBody RequestDto request){
//        ResponceDto res = this.userService.registerUser(request);
//        return new ResponseEntity<>(res, HttpStatus.CREATED);
//    }
//
//    @PostMapping("/verify")
//    public ResponseEntity<?> verifyUser(@RequestParam String email,@RequestParam String otp){
//        String res = this.userService.verifyUser(email,otp);
//        return new ResponseEntity<>(res,HttpStatus.OK);
//    }
}
