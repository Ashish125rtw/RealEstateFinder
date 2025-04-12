package com.grownited.controller;

import java.io.IOException;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.ui.Model;

import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.BuyerInquiryEntity;
import com.grownited.entity.ContactEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BuyerInquiryRepository;
import com.grownited.repository.ContactRepository;
@Controller
@RequestMapping 
public class ContactController {

    @Autowired
    private ContactRepository Repocontact;
    @Autowired
    private BuyerInquiryRepository repoBuyerInquiry;
    
    /**
     * Handles standard contact form submissions from the homepage or contact page.
     * Saves the submitted contact message to the database.
     * Redirects back to homepage after successful save.
     */
    @PostMapping("/savecontact")
    public String submitContactForm(@ModelAttribute ContactEntity contactEntity , RedirectAttributes redirectAttributes) {
        System.out.println("Received Contact Form: " + contactEntity);
        Repocontact.save(contactEntity);
        redirectAttributes.addFlashAttribute("message", "Thank you! We received your inquiry.");
        return "redirect:/homepage"; // Redirect to homepage after saving
    }
    
    /**
     * Displays a list of buyer inquiries submitted through property pages.
     * The data is passed to the ListBuyerInquiry.jsp view.
     */
    
    @GetMapping("/ListBuyerInquiry")
    public String ListBuyerInquiryMessages(Model model) {
        List<BuyerInquiryEntity> messages = repoBuyerInquiry.findAll(); // Fetch all messages
        model.addAttribute("messages", messages);
        return "ListBuyerInquiry"; 
    }
    @GetMapping("/ReportListBuyerInquiry")
    public String reportListBuyerInquiryMessages(Model model) {
    	List<BuyerInquiryEntity> messages = repoBuyerInquiry.findAll(); // Fetch all messages
    	model.addAttribute("messages", messages);
    	return "ReportListBuyerInquiry"; 
    }
    
    /**
     * Displays all general contact form messages (non-property-specific).
     * These are rendered in the Listmessages.jsp view.
     */
    @GetMapping("/Listmessages")
    public String listMessages(Model model) {
        List<ContactEntity> messages = Repocontact.findAll(); // Fetch all messages
        model.addAttribute("messages", messages);
        return "Listmessages"; // Will render listmessages.html
    }
    
    /**
     * Handles AJAX-based inquiry form submissions from the property detail page.
     * Returns a simple "OK" response to notify client-side JS of successful save.
     */
    
    @PostMapping("/savebuyerinquiry")
    @ResponseBody
    public String submitinquryForm(@ModelAttribute BuyerInquiryEntity BuyerInquiryEntity) {
        repoBuyerInquiry.save(BuyerInquiryEntity);
        return "OK"; // no redirection
    }

    /**
     * Deletes a contact message based on its ID.
     * Typically triggered via admin action from the message list.
     */
    @GetMapping("/deleteuserInquiry")
    public String deleteuserInquiry(@RequestParam Long id) {
    	Repocontact.deleteById(id);
        return "redirect:/Listmessages"; // Redirect to refresh
    }

    /**
     * Deletes a buyer inquiry (property-specific message) by ID.
     * Useful for managing inquiries in the admin/agent dashboard.
     */
    
    @GetMapping("/deleteInquiry")
    public String deleteInquiry(@RequestParam Long id) {
        repoBuyerInquiry.deleteById(id);  // Delete inquiry by ID
        return "redirect:/ListBuyerInquiry";  // Redirect to refresh the list
    }


}

