package com.grownited.controller;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.UserEntity;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ProfileController {
	

    @GetMapping("/viewProfile")
    public String viewProfile(HttpSession session, Model model) {
        UserEntity user = (UserEntity) session.getAttribute("user");

        if (user == null) {
            return "redirect:/login";
        }
        model.addAttribute("user", user);
        return "viewProfile";
    }

    @GetMapping("/editProfile")
    public String showEditProfile(HttpServletRequest request, Model model, HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser"); // or however you store it
        model.addAttribute("user", user);

        // Save the referring page so we can go back there
        String referer = request.getHeader("Referer");
        if (referer != null) {
            session.setAttribute("previousPage", referer);
        }

        return "editProfile"; // JSP name
    }


    @PostMapping("/editProfile")
    public String updateProfile(@RequestParam String firstName,
                                @RequestParam String lastName,
                                @RequestParam String phone,
                                HttpSession session) {
        UserEntity user = (UserEntity) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }

        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setContactNum(phone);

        session.setAttribute("user", user); // update session
        return "redirect:/viewProfile";
    }

    @GetMapping("/view-profile-data")
    public String viewProfileData(HttpSession session, Model model) {
        UserEntity user = (UserEntity) session.getAttribute("user");

        if (user == null) {
            return "user-not-logged-in"; // fallback fragment
        }

        model.addAttribute("user", user);
        return "profile-fragment";
    }


}
