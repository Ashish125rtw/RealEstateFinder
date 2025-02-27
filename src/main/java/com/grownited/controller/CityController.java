package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.repository.*;
import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
@Controller
public class CityController {
    
    @Autowired
    private CityRepository repoCity;
    
    @Autowired
    private StateRepository repoState;  // ✅ Added to fetch states

    @GetMapping("NewCity")
    public String newCityForm(Model model) {
    	
    	List<StateEntity> allstate = repoState.findAll();
    	
    	model.addAttribute("allstate", allstate);
    	
        model.addAttribute("city", new CityEntity());
//        model.addAttribute("states", repoState.findAll()); // ✅ Fetch all states
        return "NewCity";
    }
    
    @PostMapping("savecity")
    public String saveCity( CityEntity cityEntity) {  
        repoCity.save(cityEntity);
        return "redirect:/ListCity";  
    }
    
    // List Cities
    @GetMapping("ListCity")
    public String listCity(Model model) {
        List<CityEntity> cityList = repoCity.findAll();
   
        model.addAttribute("cityList", cityList);
      
        return "ListCity";
    }
}
