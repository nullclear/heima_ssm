package com.yxy.ssm.utils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Created by Nuclear on 2020/3/27
 */
public class BCryptPasswordEncoderUtils {
    private static BCryptPasswordEncoder bCryptPasswordEncoder=new BCryptPasswordEncoder();
    public static String encodePassword(String password){return bCryptPasswordEncoder.encode(password);}

    public static void main(String[] args) {
        String password="123";
        String pwd=encodePassword(password);
        System.out.println(pwd);
    }

}
