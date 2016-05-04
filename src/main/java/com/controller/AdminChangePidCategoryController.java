package com.controller;

import com.entity.Category;
import com.entity.PidCategory;
import com.repository.PidCategoryRepository;
import com.servise.CategoryService;
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

    @Autowired
    CategoryService categoryService;

    @Autowired
    PidCategoryRepository pidCategoryRepository;

    //удаляє вибрану під-категорію в адмінці
    @RequestMapping ("/adminDeletePidCategory/{id}")
    public String deletePidCategory(@PathVariable String id){
        PidCategory pidCategory = pidCategoryRepository.findOne(Integer.parseInt(id));
        pidCategory.setCategory(null);
        pidCategoryService.deletePidCategory(id);
        return "redirect:/adminCategory";
    }

    //пероходить до підкатегорії даної категорії
    //виводить під-категорії які доровнюють категорії в админці
    @RequestMapping ("/adminPidCategory{name}")
    public String ShowPidCategoryFromNameCategory(@PathVariable String name,Model model){
        model.addAttribute("name_category", name);
        String id = Integer.toString(categoryService.findIdCategoryByNameCategory(name).getId());
        model.addAttribute("pidcategorys", pidCategoryService.findPidCategoryByCategory(Integer.parseInt(id)));
        return "adminPidCategory";
    }


    //addPidCategory
    @RequestMapping(value="/adminPidCategory{nameCategory}", method = RequestMethod.POST)
    public String savePidCategory (HttpServletResponse response, @RequestParam String name, @PathVariable("nameCategory") String nameCategory
    ) throws IOException {
        int id;
        if (name.equals("")) {
            return "redirect:/adminPidCategory{nameCategory}";
        }
        else
            id = categoryService.findIdCategoryByNameCategory(nameCategory).getId();
            pidCategoryService.addPidCategory(name,id);
        return "redirect:/adminPidCategory{nameCategory}";

    }
}
