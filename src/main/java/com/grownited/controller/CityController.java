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
import com.grownited.dto.CityDto;@Controller
public class CityController {
    
    @Autowired
    private CityRepository repoCity;
    
    @Autowired
    private StateRepository repoState; 

    @GetMapping("NewCity")
    public String newCityForm(Model model) {
        List<StateEntity> allstate = repoState.findAll();
        model.addAttribute("allstate", allstate);
        model.addAttribute("city", new CityEntity());
        return "NewCity";
    }
    
    @PostMapping("savecity")
    public String saveCity(CityEntity cityEntity) {  
        repoCity.save(cityEntity);
        return "redirect:/ListCity";  
    }
    
    // List Cities - Consolidated into a single method
    @GetMapping("ListCity")
    public String listCity(Model model) {
        List<CityDto> allCity = repoCity.getAll();  // Using DTO list
        model.addAttribute("cityList", allCity);
        return "ListCity";
    }
}
