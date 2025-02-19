package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.repository.*;
import com.grownited.entity.CityEntity;

@Controller
public class CityController {
    
	@Autowired
	
	private CityRepository repoCity;
	
    @GetMapping("NewCity")
    public String NewCity() {
        return "NewCity";
    }
    
    @PostMapping("savecity")
    public String saveCity( CityEntity cityEntity) {  
        System.out.println("Saving City: " + cityEntity.getCityName());  // Debugging
       
        repoCity.save(cityEntity);
        return "redirect:/NewCity";  
    }
    
    // List City 
    @GetMapping("ListCity")
    public String listCity(Model model) {
    	List<CityEntity> cityList = repoCity.findAll();
    	model.addAttribute("cityList",cityList);
    	return "ListCity";
    }
   

    
}
