package com.controller;

import com.entity.Category;
import com.servise.PidCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PidCategoryController {

    @Autowired
    PidCategoryService pidCategoryService;



    //пероходить до підкатегорії даної категорії
    //виводить під-категорії які доровнюють категорії в админці
    @RequestMapping("/pidCategory{id}")
    public String ShowPidCategoryFromIdCategory(@PathVariable String id, Model model){
        model.addAttribute("idCategory", id);
        model.addAttribute("pidcategorys", pidCategoryService.findPidCategoryByCategory(Integer.parseInt(id)));
        return "pidCategory";
    }

}
