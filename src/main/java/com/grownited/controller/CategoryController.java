package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import com.grownited.entity.CategoryEntity;
import com.grownited.repository.CategoryRepository;

@Controller
public class CategoryController {

    @Autowired
    private CategoryRepository categoryRepository;

    @PostMapping("/saveCategory")
    public String saveCategory(CategoryEntity category) {
        categoryRepository.save(category);
        return "redirect:/newCategory";
    }

    @GetMapping("/newCategory")
    public String newCategory(Model model) {
        model.addAttribute("category", new CategoryEntity());
        return "newCategory";
    }
}
