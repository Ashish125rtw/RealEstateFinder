package com.grownited.controller.Buyer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.AgentRepository;
import com.grownited.repository.FavoriteRepository;
import com.grownited.repository.InquiryRepository;
import com.grownited.repository.PropertyRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class BuyerDashboard {
	
	@Autowired
	private PropertyRepository propertyRepository;
	
	@Autowired
	private UserRepository userRepository;
	

	@Autowired
	private FavoriteRepository favoriteRepo;
	
	@GetMapping("/BuyerDashboard")
	public String buyerDashboard(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");

		if (user != null && user.getRole().equalsIgnoreCase("Buyer")) {
		    Long buyerId = Long.valueOf(user.getUserId()); // In case getUserId returns Integer

		    int totalProperties = propertyRepository.findAll().size();
		    int savedProperties = favoriteRepo.findByUserId(buyerId).size();

		    model.addAttribute("totalProperties", totalProperties);
		    model.addAttribute("savedProperties", savedProperties);

		    return "BuyerDashboard";
		}

	    

	    return "redirect:/login";
	}
	
	
	
	}



