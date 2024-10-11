package com.register_verify.type1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AuthController {

    @GetMapping("/")
    public String home() {
        return "home";  // Return home.html (Thymeleaf template for the home page)
    }
}
