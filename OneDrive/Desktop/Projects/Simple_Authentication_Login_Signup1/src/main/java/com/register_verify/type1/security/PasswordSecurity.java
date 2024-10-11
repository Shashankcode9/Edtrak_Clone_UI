package com.register_verify.type1.security;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
@Component
@Configuration
public class PasswordSecurity {
    public String Encoding(String password){
        String str = Base64.getEncoder().encodeToString(password.getBytes());
        return str;
    }

    public String Decoding(String password){
        byte[] arr = Base64.getDecoder().decode(password);
        String real = new String(arr);
        return real;
    }

}
