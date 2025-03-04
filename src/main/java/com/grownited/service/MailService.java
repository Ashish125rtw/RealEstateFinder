package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {
    
    @Autowired
    private JavaMailSender mailSender;

    private final String senderEmail = "your-email@gmail.com"; // Replace with your configured sender email

    public void sendWelcomeMail(String email, String firstName) {
        String subject = "Welcome to Real Estate Finder!";
        String body = "Dear " + firstName + ",\n\n"
                + "Welcome to Real Estate Finder – your one-stop platform for finding the perfect property!\n\n"
                + "🔍 Search & Explore: Browse thousands of verified listings.\n"
                + "🏡 Find Your Dream Home: Get personalized property recommendations.\n"
                + "💬 Connect with Sellers & Agents: Communicate directly with property owners.\n\n"
                + "If you have any questions, feel free to reach out – we’re here to help!\n\n"
                + "Happy House Hunting! 🏡✨\n\n"
                + "Best Regards,\n"
                + "**Real Estate Finder Team**";

        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(senderEmail);
        message.setTo(email);
        message.setSubject(subject);
        message.setText(body);

        mailSender.send(message);
    }
    
    public void sendOtpForForgotPassword(String email, String firstName, String otp) {
        String subject = "Password Reset Request - Real Estate Finder";
        String body = "Dear " + firstName + ",\n\n"
                + "We received a request to reset your password for your Real Estate Finder account.\n\n"
                + "🔒 Your OTP (One-Time Password) is: " + otp + "\n\n"
                + "Please enter this OTP in the password reset page to proceed. This OTP is valid for a limited time.\n\n"
                + "If you did not request a password reset, please ignore this email or contact our support team.\n\n"
                + "Best Regards,\n"
                + "Real Estate Finder Team";

        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(senderEmail);
        message.setTo(email);
        message.setSubject(subject);
        message.setText(body);

        mailSender.send(message);
    }

}
