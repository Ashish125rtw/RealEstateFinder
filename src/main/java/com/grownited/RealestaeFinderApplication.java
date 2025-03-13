package com.grownited;

import java.net.PasswordAuthentication;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import org.hibernate.mapping.Map;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;


@SpringBootApplication
public class RealestaeFinderApplication {

	public static void main(String[] args) {
		SpringApplication.run(RealestaeFinderApplication.class, args);
	}
	
	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder(5);
	}

	
	@Bean
    public Cloudinary cloudinary() {
        return new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "ds931wzp8",
                "api_key", "559844976226782",
                "api_secret", "9XYlWxWW_-AKwwMvz14GLx-o7Sc"
        ));
    }
}
