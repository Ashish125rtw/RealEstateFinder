package com.grownited.controller.Seller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.PropertyEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.PropertyRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SellerController {
    
    @Autowired
    private PropertyRepository propertyRepository;
//    
//    @GetMapping("SellerDashboard")  
//    public String sellerDashboard(Model model, HttpSession session) {
//        // Get the logged-in seller from the session
//        UserEntity user = (UserEntity) session.getAttribute("user");
//        
//        if (user == null) {
//            // If user is not logged in, redirect to login page
//            return "redirect:/login";
//        }
//        
//        // Convert Integer userId to Long
//        Integer userIdInt = user.getUserId(); 
//        Long sellerId = userIdInt.longValue(); // Convert Integer to Long
//        
//        // Fetch properties for this seller
//        List<PropertyEntity> sellerProperties = propertyRepository.findBySellerId(sellerId);
//        
//        // Add to model
//        model.addAttribute("sellerProperties", sellerProperties);
//        
//        return "SellerDashboard"; 
//    }
    @GetMapping("SellerDashboard")  
    public String sellerDashboard(Model model, HttpSession session) {
        // Get the logged-in seller from the session
        UserEntity user = (UserEntity) session.getAttribute("user");
        
        if (user == null) {
            return "redirect:/login"; // Redirect to login if not logged in
        }

        // Convert Integer userId to Long
        Long sellerId = user.getUserId().longValue(); 
        
        // Fetch properties for this seller
        List<PropertyEntity> sellerProperties = propertyRepository.findBySellerId(sellerId);

        // Add properties and default stats to model
        model.addAttribute("sellerProperties", sellerProperties);
        model.addAttribute("totalProperties", sellerProperties.size());
        model.addAttribute("pendingInquiries", 0); // Placeholder until implemented
        model.addAttribute("totalSales", 0);       // Placeholder until implemented

        return "SellerDashboard"; 
    }

    
    @GetMapping("seller_properties")
    public String getMyProperties(HttpSession session, Model model) {
        UserEntity seller = (UserEntity) session.getAttribute("user"); // ✅ fixed here

        if (seller == null) {
            return "redirect:/login";
        }

        Long sellerId = seller.getUserId().longValue();
        List<PropertyEntity> properties = propertyRepository.findBySellerId(sellerId);

        model.addAttribute("myProperties", properties);
        return "seller_properties";
    }
    
    // delete property 
    @GetMapping("/deleteProperty")
    public String deleteProperty(@RequestParam("pid") Long propertyId) {
        propertyRepository.deleteById(propertyId);
        return "redirect:/seller_properties";
    }
    
    @GetMapping("/editProperty")
    public String showEditForm(@RequestParam("pid") Long propertyId, Model model, HttpSession session) {
        UserEntity seller = (UserEntity) session.getAttribute("user");
        if (seller == null) return "redirect:/login";

        PropertyEntity property = propertyRepository.findById(propertyId).orElse(null);

        if (property == null || !property.getSellerId().equals(seller.getUserId().longValue())) {
            return "redirect:/seller_properties"; // Prevent editing other seller's property
        }

        model.addAttribute("property", property);
        return "edit_property";
    }

    @PostMapping("/updateProperty")
    public String updateProperty(@ModelAttribute PropertyEntity property, HttpSession session) {
        UserEntity seller = (UserEntity) session.getAttribute("user");
        if (seller == null) return "redirect:/login";

        property.setSellerId(seller.getUserId().longValue()); // Make sure it's saved as the seller's
        propertyRepository.save(property);

        return "redirect:/seller_properties";
    }
    
    


}