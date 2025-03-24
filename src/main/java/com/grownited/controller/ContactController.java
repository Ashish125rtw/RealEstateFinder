package com.grownited.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.ui.Model;

import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.ContactEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ContactRepository;
//
//@Controller
//@RequestMapping("/contact")  // Ensure all contact-related mappings are under /contact
//public class ContactController {
//
//    @Autowired
//    private ContactRepository contactRepository;
//
//    
//    @PostMapping("/save")
//    public String submitContactForm(@ModelAttribute ContactEntity contactEntity) {
//        System.out.println("Received Contact Form: " + contactEntity);
//        contactRepository.save(contactEntity);
//        return "redirect:/homepage";  // Ensure this URL exists in your application
//    }
////    @PostMapping("/savecontact")
////   	public String saveUser(ContactEntity contactEntity) {
////
////    	 System.out.println(contactEntity.getMessage());  
////         contactRepository.save(contactEntity);
////        
////   		    return "redirect:/login";
////   		
////
////   	}
//    
//    
//}
@Controller
@RequestMapping 
public class ContactController {

    @Autowired
    private ContactRepository Repocontact;

    @PostMapping("/savecontact")
    public String submitContactForm(@ModelAttribute ContactEntity contactEntity) {
        System.out.println("Received Contact Form: " + contactEntity);
        Repocontact.save(contactEntity);
        return "redirect:/homepage"; // Redirect to homepage after saving
    }
    @GetMapping("/Listmessages")
    public String listMessages(Model model) {
        List<ContactEntity> messages = Repocontact.findAll(); // Fetch all messages
        model.addAttribute("messages", messages);
        return "Listmessages"; // Will render listmessages.html
    }
    
}

