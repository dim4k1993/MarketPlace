package com.controller;



import com.entity.User;

import com.servise.RegionService;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;


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
    public String registrationUser(Model model,@Valid @ModelAttribute User user,BindingResult result){
        if(result.hasErrors()){
            model.addAttribute("regionModel",regionService.getAll());
            return "registration";
        }
        userService.saveUser(user);
        return "redirect:/userAccount";
    }

}
