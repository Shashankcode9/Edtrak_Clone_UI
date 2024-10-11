package com.register_verify.type1.services;


import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.DecimalFormat;
import java.util.Random;
@Service
public class EmailService {
    @Autowired
    JavaMailSender javaMailSender;



    public void EmailSending(String to,String text){
        try{
            MimeMessage message = javaMailSender.createMimeMessage();
            MimeMessageHelper he = new MimeMessageHelper(message,true);
            he.setTo(to);

            he.setSubject("Verification Of User for VikG Website");

            he.setText(text);
            javaMailSender.send(message);

        } catch (MessagingException e) {
            e.printStackTrace();

        }

    }

}
