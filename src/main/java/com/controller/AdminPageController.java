package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPageController {

    //відображення сторінки админа
    @RequestMapping("/adminPage")
    public String ShowAdminPage(){
        return "adminPage";
    }
}
