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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.CityEntity;
import com.grownited.entity.PropertyEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.PropertyRepository;
import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import java.util.Map;
import java.util.Optional;

@Controller
public class PropertyController {

	@Autowired

	PropertyRepository repoproperty;
	@Autowired
	private Cloudinary cloudinary;


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
	

	@PostMapping("/saveproperty")
	public String saveUser(PropertyEntity propertyEntity, // Fixed parameter naming
	                       @RequestParam("propertyPic") MultipartFile propertyPic) {

	    if (propertyPic == null || propertyPic.isEmpty()) {
	        return "signup"; // Return to signup if no file is provided
	    }

	    System.out.println("Uploaded File Name: " + propertyPic.getOriginalFilename());

	    // Check for valid file extensions
	    String fileName = propertyPic.getOriginalFilename();
	    if (!(fileName != null && (fileName.endsWith(".jpg") || fileName.endsWith(".jpeg") || fileName.endsWith(".png")))) {
	        return "signup"; // Return if file format is invalid
	    }

	    try {
	        // Upload to Cloudinary
	    	

	        Map<String, Object> result = cloudinary.uploader().upload(propertyPic.getBytes(), ObjectUtils.emptyMap());
	        System.out.println("Upload Response: " + result);
	        System.out.println("property Pic URL: " + result.get("url"));

	        // Save profile picture URL
	        propertyEntity.setImageUrls(result.get("url").toString()); // Fixed method name
	    } catch (IOException e) {
	        e.printStackTrace();
	        return "Property"; // Return in case of upload failure
	    }
	    repoproperty.save(propertyEntity);
	    return "redirect:/SellerDashboard";
	}
	
	
	//ViewProperty
	@GetMapping("ViewProperty")
	public String ViewProperty() {
		
		
		return "ViewProperty";
	}
	
//	@GetMapping("/ViewProperty/{id}")
//	public String ViewProperty(@PathVariable("id") Integer id, Model model) {
//	    Optional<PropertyEntity> property = repoproperty.findById(id);
//
//	    if (property.isPresent()) {
//	        model.addAttribute("property", property.get());
//	        return "ViewProperty"; // Make sure this view file exists
//	    }
//
//	    return "redirect:/ListProperty"; 
//	}

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



}