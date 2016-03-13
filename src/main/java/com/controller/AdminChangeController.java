package com.controller;

import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminChangeController {

    @Autowired
    UserService userService;

    // виводить всіх юзерів в адмінці
    @RequestMapping("/adminDeleteUser")
    public String ShowUser(Model model) {
        model.addAttribute("users",userService.getAll());
        return "adminDeleteUser";
    }
    // удаляє вибраного юзера в адмінці
    @RequestMapping("/adminDeleteUser/{id}")
    public String daleteUserPage (@PathVariable String id){
        userService.daleteUser(id);
        return "redirect:/adminDeleteUser";
    }



    // виводить всіх юзерів в адмінці
    @RequestMapping("/adminShowUser")
    public String ShowAllUser(Model model) {
        model.addAttribute("users",userService.getAll());
        return "adminShowUser";
    }




}