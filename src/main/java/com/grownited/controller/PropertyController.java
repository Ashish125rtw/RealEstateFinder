	package com.grownited.controller;
	
	import java.awt.JobAttributes.MultipleDocumentHandlingType;

	
	import java.io.IOException;
	import java.util.ArrayList;
	import java.util.List;
	
	import jakarta.mail.Multipart;
	import com.cloudinary.Cloudinary;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	
	import com.cloudinary.utils.ObjectUtils;
	import com.grownited.entity.BuyerInquiryEntity;
	import com.grownited.entity.CityEntity;
import com.grownited.entity.FavoriteEntity;
import com.grownited.entity.PropertyEntity;
	import com.grownited.entity.UserEntity;
	import com.grownited.repository.BuyerInquiryRepository;
import com.grownited.repository.FavoriteRepository;
import com.grownited.repository.PropertyRepository;
	import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;
	import org.springframework.web.servlet.mvc.support.RedirectAttributes;
	import org.springframework.transaction.annotation.Transactional;
	
	import java.util.Map;
	import java.util.Optional;
	
	
	@Controller
	public class PropertyController {
	
		@Autowired
	
		PropertyRepository repoproperty;
		@Autowired
		private Cloudinary cloudinary;
	
		@Autowired
		private BuyerInquiryRepository buyerInquiryRepository;
		
		@GetMapping("Property")
		public String Property() {
	
			return "Property";
		}
	
		// List Property
		@GetMapping("ListProperty")
		public String listProperty(Model model) {
			List<PropertyEntity> propertyList = repoproperty.findAll();
	
			model.addAttribute("propertyList", propertyList);
	
			return "ListProperty";
		}
	
	//	@PostMapping("/saveproperty")
	//	public String saveProperty(PropertyEntity PropertyEntity) {
	//		repoproperty.save(PropertyEntity);
	//		System.out.println("Year Built: " + PropertyEntity.getYearBuilt()); // Debugging
	//		return "redirect:/ListProperty";
	//	}
		
	//saveProperty
		
//		@PostMapping("/saveproperty")
//		public String saveUser(PropertyEntity propertyEntity, // Fixed parameter naming
//		                       @RequestParam("propertyPic") MultipartFile propertyPic) {
//	
//		    if (propertyPic == null || propertyPic.isEmpty()) {
//		        return "signup"; // Return to signup if no file is provided
//		    }
//	
//		    System.out.println("Uploaded File Name: " + propertyPic.getOriginalFilename());
//	
//		    // Check for valid file extensions
//		    String fileName = propertyPic.getOriginalFilename();
//		    if (!(fileName != null && (fileName.endsWith(".jpg") || fileName.endsWith(".jpeg") || fileName.endsWith(".png")))) {
//		        return "signup"; // Return if file format is invalid
//		    }
//	
//		    try {
//		        // Upload to Cloudinary
//		    	
//	
//		        Map<String, Object> result = cloudinary.uploader().upload(propertyPic.getBytes(), ObjectUtils.emptyMap());
//		        System.out.println("Upload Response: " + result);
//		        System.out.println("property Pic URL: " + result.get("url"));
//	
//		        // Save profile picture URL
//		        propertyEntity.setImageUrls(result.get("url").toString()); // Fixed method name
//		    } catch (IOException e) {
//		        e.printStackTrace();
//		        return "Property"; // Return in case of upload failure
//		    }
//		    repoproperty.save(propertyEntity);
//		    return "redirect:/SellerDashboard";
//		}
		
		  // Save Property with Image Upload to Cloudinary
//		@PostMapping("/saveproperty")
//		public String saveProperty(
//		        PropertyEntity propertyEntity,
//		        @RequestParam("propertyPic") MultipartFile propertyPic,
//		        HttpServletRequest request,
//		        RedirectAttributes redirectAttributes) {
//
//		    if (propertyPic == null || propertyPic.isEmpty()) {
//		        redirectAttributes.addFlashAttribute("error", "Please upload a property image.");
//		        return "redirect:/Property";
//		    }
//
//		    String fileName = propertyPic.getOriginalFilename();
//		    if (!(fileName != null && (fileName.endsWith(".jpg") || fileName.endsWith(".jpeg") || fileName.endsWith(".png")))) {
//		        redirectAttributes.addFlashAttribute("error", "Only JPG, JPEG, or PNG files are allowed.");
//		        return "redirect:/Property";
//		    }
//
//		    try {
//		        // Upload to Cloudinary
//		        Map<String, Object> result = cloudinary.uploader().upload(propertyPic.getBytes(), ObjectUtils.emptyMap());
//		        String imageUrl = result.get("url").toString();
//		        propertyEntity.setImageUrls(imageUrl);
//
//		    } catch (IOException e) {
//		        e.printStackTrace();
//		        redirectAttributes.addFlashAttribute("error", "Image upload failed.");
//		        return "redirect:/Property";
//		    }
//
//		    // Optional: Get seller from session
////		    UserEntity seller = (UserEntity) request.getSession().getAttribute("userSession");
//		    UserEntity seller = (UserEntity) request.getSession().getAttribute("user");
//
//		    if (seller != null) {
//		        // Convert Integer to Long
//		        propertyEntity.setSellerId(Long.valueOf(seller.getUserId())); // Convert to Long before setting
//		    } else {
//		        propertyEntity.setSellerId(1L); // Hardcoded fallback
//		    }
//
//		    // Set default property values
//		    propertyEntity.setActive(true);
//		    propertyEntity.setStatus("Pending");
//
//		    // Save to DB
//		    repoproperty.save(propertyEntity);
//		    redirectAttributes.addFlashAttribute("success", "Property added successfully!");
//		   
//		    return "redirect:/Property";
//
//		}
//		
	
		// Save Property with Image Upload to Cloudinary
		@PostMapping("/saveproperty")
		public String saveProperty(
		        PropertyEntity propertyEntity,
		        @RequestParam("propertyPic") MultipartFile propertyPic,
		        HttpServletRequest request,
		        RedirectAttributes redirectAttributes) {

		    if (propertyPic == null || propertyPic.isEmpty()) {
		        redirectAttributes.addFlashAttribute("error", "Please upload a property image.");
		        return "redirect:/Property";
		    }

		    String fileName = propertyPic.getOriginalFilename();
		    if (!(fileName != null && (fileName.endsWith(".jpg") || fileName.endsWith(".jpeg") || fileName.endsWith(".png")))) {
		        redirectAttributes.addFlashAttribute("error", "Only JPG, JPEG, or PNG files are allowed.");
		        return "redirect:/Property";
		    }

		    try {
		        // Upload to Cloudinary
		        Map<String, Object> result = cloudinary.uploader().upload(propertyPic.getBytes(), ObjectUtils.emptyMap());
		        String imageUrl = result.get("url").toString();
		        propertyEntity.setImageUrls(imageUrl);

		    } catch (IOException e) {
		        e.printStackTrace();
		        redirectAttributes.addFlashAttribute("error", "Image upload failed.");
		        return "redirect:/Property";
		    }

		    // Get seller from session
		    UserEntity seller = (UserEntity) request.getSession().getAttribute("user");

		    if (seller != null) {
		        Long sellerId = Long.valueOf(seller.getUserId());
		        propertyEntity.setSellerId(sellerId);
		        System.out.println("[DEBUG] Seller ID set from session: " + sellerId);
		    } else {
		        propertyEntity.setSellerId(1L); // Hardcoded fallback
		        System.out.println("[DEBUG] No user in session, using fallback seller ID 1");
		    }

		    // Set default property values
		    propertyEntity.setActive(true);
		    propertyEntity.setStatus("Pending");

		    // Save to DB
		    repoproperty.save(propertyEntity);
		    System.out.println("[DEBUG] Property saved: " + propertyEntity.getTitle() + ", SellerID: " + propertyEntity.getSellerId());

		    redirectAttributes.addFlashAttribute("success", "Property added successfully!");

		    return "redirect:/Property";
		}


		//ViewProperty
		@GetMapping("ViewProperty")
		public String ViewProperty() {
			
			
			return "ViewProperty";
		}

	
		@GetMapping("/ViewProperty/{id}")
		public String viewProperty(@PathVariable("id") Long id, Model model) {  // Change Integer to Long
		    Optional<PropertyEntity> property = repoproperty.findById(id);
	
		    if (property.isPresent()) {
		        System.out.println("Property found: " + property.get()); // Debugging
		        model.addAttribute("property", property.get());
		        return "ViewProperty";
		    }
	
		    System.out.println("Property not found for ID: " + id); // Debugging
		    return "redirect:/ListProperty";
		}
		// Add to favourite
		
		@Autowired
		private FavoriteRepository favoriteRepo;

		@PostMapping("/save-favorite/{propertyId}")
		public String saveFavorite(@PathVariable("propertyId") Long propertyId, HttpSession session, RedirectAttributes redirectAttributes) {
		    UserEntity user = (UserEntity) session.getAttribute("user");

		    if (user != null && user.getRole().equalsIgnoreCase("Buyer")) {
		        Long userId = Long.valueOf(user.getUserId());

		        // Prevent duplicates
		        if (!favoriteRepo.existsByUserIdAndPropertyId(userId, propertyId)) {
		            FavoriteEntity fav = new FavoriteEntity();
		            fav.setUserId(userId);
		            fav.setPropertyId(propertyId);
		            favoriteRepo.save(fav);
		            redirectAttributes.addFlashAttribute("success", "Property added to your favorites.");
		        } else {
		            redirectAttributes.addFlashAttribute("info", "Property already in favorites.");
		        }

		        return "redirect:/ViewProperty/" + propertyId;
		    }

		    redirectAttributes.addFlashAttribute("error", "Please log in as a buyer.");
		    return "redirect:/login";
		}


		//list favourites

		@GetMapping("/BuyerFavorites")
		public String viewFavorites(HttpSession session, Model model) {
		    UserEntity user = (UserEntity) session.getAttribute("user");

		    if (user != null && user.getRole().equalsIgnoreCase("Buyer")) {
		        List<FavoriteEntity> favorites = favoriteRepo.findByUserId(Long.valueOf(user.getUserId()));
		        List<PropertyEntity> favoriteProperties = new ArrayList<>();

		        for (FavoriteEntity fav : favorites) {
		            repoproperty.findById(fav.getPropertyId()).ifPresent(favoriteProperties::add);
		        }

		        model.addAttribute("favorites", favoriteProperties);
		        return "BuyerFavorites"; // your JSP
		    }

		    return "redirect:/login";
		}
		
			// remove from favorite
		@GetMapping("/remove-favorite/{propertyId}")
		public String removeFavorite(@PathVariable("propertyId") Long propertyId, HttpSession session, RedirectAttributes redirectAttributes) {
		    UserEntity user = (UserEntity) session.getAttribute("user");

		    if (user != null && user.getRole().equalsIgnoreCase("Buyer")) {
		        Long userId = Long.valueOf(user.getUserId()); // 🔧 Fix: convert to Long
		        FavoriteEntity fav = favoriteRepo.findByUserIdAndPropertyId(userId, propertyId);

		        if (fav != null) {
		            favoriteRepo.delete(fav);
		            redirectAttributes.addFlashAttribute("success", "Property removed from favorites.");
		        } else {
		            redirectAttributes.addFlashAttribute("error", "Favorite not found.");
		        }

		        return "redirect:/BuyerFavorites";
		    }

		    redirectAttributes.addFlashAttribute("error", "Please log in as a buyer.");
		    return "redirect:/login";
		}




	
	
	}