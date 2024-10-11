package com.register_verify.type1.controller;

import com.register_verify.type1.dto.Logindto;
import com.register_verify.type1.dto.RequestDto;
import com.register_verify.type1.dto.ResponceDto;
import com.register_verify.type1.repositort.UserRepo;
import com.register_verify.type1.security.PasswordSecurity;
import com.register_verify.type1.services.UserService;
import com.register_verify.type1.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class LoginController {

    @Autowired
    UserRepo userRepo;
    @Autowired
    UserService userService;
    @Autowired
    private PasswordSecurity p;
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("logindto", new Logindto());
        return "login"; // This is the name of the Thymeleaf HTML file
    }

    @PostMapping("/submit-login")
    public String submitLogin(@ModelAttribute Logindto login, Model model) {
        String mail = login.getEmail();
        String pass = p.Encoding(login.getPassword());
        User user = this.userRepo.findByEmail(mail);
        String pas = user.getPassword();
        if(pas.equals(pass)){
            model.addAttribute("Logindto", login);
            return "welcome";
        }else{
            model.addAttribute("errorMessage", "Invalid email or password");
            return "login";
        }

         // Redirect to success page
    }
}
