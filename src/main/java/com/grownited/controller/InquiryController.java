package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.grownited.entity.InquiryEntity;
import com.grownited.repository.InquiryRepository;
import java.util.Date;

@Controller
public class InquiryController {

    @Autowired
    private InquiryRepository inquiryRepository;

    @PostMapping("/saveInquiry")
    public String saveInquiry(@ModelAttribute InquiryEntity inquiry) {
        inquiry.setInquiryDate(new Date()); 
        inquiryRepository.save(inquiry);
        return "redirect:/newInquiry"; 
    }

    @GetMapping("/newInquiry")
    public String newInquiry(Model model) {
        model.addAttribute("inquiry", new InquiryEntity());
        return "newInquiry";
    }
}
