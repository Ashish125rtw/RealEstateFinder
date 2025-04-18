package com.grownited.controller;

import com.grownited.entity.BasicInquiryEntity;

import com.grownited.repository.BasicInquiryRepository;

import jakarta.servlet.http.HttpSession;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;


@Controller
public class BasicInquiryController {

    @Autowired
    private BasicInquiryRepository basicInquiryRepository;

    @GetMapping("/basic_inquiry")
    public String showBasicInquiryForm() {
        return "basic_inquiry"; // refers to basic_inquiry.jsp
    }

    @PostMapping("/submit-inquiry")
    public String handleInquirySubmit(@ModelAttribute BasicInquiryEntity inquiry, Model model) {
        basicInquiryRepository.save(inquiry);
        model.addAttribute("successMessage", "Your inquiry has been sent successfully!");
        return "basic_inquiry"; // stay on same page with success message
    }
    @GetMapping("/AgentGeneralInquiries")
    public String viewGeneralInquiries(Model model) {
        List<BasicInquiryEntity> inquiries = basicInquiryRepository.findAll();
        model.addAttribute("inquiries", inquiries);
        return "AgentGeneralInquiries"; 
    }
    
  


}
