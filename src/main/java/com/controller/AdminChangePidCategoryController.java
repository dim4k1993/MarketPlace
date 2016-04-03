package com.controller;

import com.servise.PidCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//контроллер роботи адміністротора
@Controller
public class AdminChangePidCategoryController {

    @Autowired
    PidCategoryService pidCategoryService;

    //удаляє вибрану під-категорію в адмінці
    @RequestMapping ("/adminDeletePidCategory/{id}")
    public String deletePidCategory(@PathVariable String id){
        pidCategoryService.deletePidCategory(id);
        return "redirect:/adminCategory";
    }

    //пероходить до підкатегорії даної категорії
    //виводить під-категорії які доровнюють категорії в админці
    @RequestMapping ("/adminPidCategory{id}")
    public String ShowPidCategoryFromIdCategory(@PathVariable String id,Model model){
        model.addAttribute("id_category", id);
        model.addAttribute("pidcategorys", pidCategoryService.findPidCategoryByCategory(Integer.parseInt(id)));
        return "adminPidCategory";
    }


    //addPidCategory
    @RequestMapping(value="/adminPidCategory{id}", method = RequestMethod.POST)
    public String savePidCategory (HttpServletResponse response, @RequestParam String name, @PathVariable("id") int id
    ) throws IOException {
        if (name.equals("")) {
            return "redirect:/adminPidCategory{id}";
        }
        else
            pidCategoryService.addPidCategory(name,id);
        return "redirect:/adminPidCategory{id}";

    }
}
