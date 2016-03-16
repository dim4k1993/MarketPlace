package com.controller;

import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPageController {
    
    @Autowired
    UserService userService;

    //відображення сторінки админа
    @RequestMapping("/adminAccount")
    public String ShowAdminPage(){
        return "adminAccount";
    }

}
