package com.controller;


import com.entity.City;
import com.entity.Role;
import com.entity.User;
import com.repository.CityRepository;
import com.repository.UserRepository;
import com.servise.CityService;
import com.servise.RegionService;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class RegistrationUserController {

    @Autowired
    UserService userService;
    @Autowired
    RegionService regionService;

    //відображення сторінки регістріції i модель регіонів і міст
    @RequestMapping(value= "/registration", method = RequestMethod.GET)
    public String ShowRegistration(Model model) {
        model.addAttribute("regionModel",regionService.getAll());
        return "registration";
    }
    //створення юзера
    @ModelAttribute("user")
    public User setUser(){
        return new User();
    }

    // реєстрація юзера
    @RequestMapping(value = "/registration=user+add",method = RequestMethod.POST)
    public String registrationUser(@ModelAttribute User user){
        userService.saveUser(user);
        return "redirect:/userAccount";
    }

}
