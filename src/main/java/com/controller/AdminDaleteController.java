package com.controller;

import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminDaleteController {

    @Autowired
    UserService userService;

    // виводить всіх юзерів
    @RequestMapping("/adminDeleteUser")
    public String ShowUser(Model model) {
        model.addAttribute("users",userService.getAll());
        return "adminDeleteUser";
    }
    // удаляє вибраного юзера
    @RequestMapping("/adminDeleteUser/{id}")
    public String daleteUser (@PathVariable String id){
        userService.daleteUser(id);
        return "redirect:/adminDeleteUser";
    }

}