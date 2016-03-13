package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPageController {

    //відображення сторінки админа
    @RequestMapping("/adminAccount")
    public String ShowAdminPage(){
        return "adminAccount";
    }
}
