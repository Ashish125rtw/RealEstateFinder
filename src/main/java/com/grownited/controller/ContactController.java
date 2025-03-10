package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.grownited.entity.ContactEntity;
import com.grownited.repository.ContactRepository;

@Controller
public class ContactController {

    @Autowired
    private ContactRepository contactRepository;

    @GetMapping("/contact")
    public String showContactForm() {
        return "contact"; // Loads contact.jsp
    }

    @PostMapping("/contact")
    public String submitContactForm(@ModelAttribute ContactEntity contactEntity, RedirectAttributes redirectAttributes) {
        contactEntity.setId(null); // Ensures a new record is inserted
        contactRepository.save(contactEntity);
        redirectAttributes.addFlashAttribute("successMessage", "Your message has been sent successfully!");
        return "redirect:/contact"; // Refresh the page to clear the form
    }
}
