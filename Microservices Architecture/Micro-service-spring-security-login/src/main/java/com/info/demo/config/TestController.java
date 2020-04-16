package com.info.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

public class TestController {


    @Autowired
    private static PasswordEncoder passwordEncoder;


    public static void main(String[] args){
        passwordEncoder.encode("tofazzal");
        System.out.println(passwordEncoder.encode("tofazzal"));
    }
}
