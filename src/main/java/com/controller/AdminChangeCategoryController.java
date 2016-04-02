package com.controller;

import com.servise.CategoryService;
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
public class AdminChangeCategoryController {
    @Autowired
    CategoryService categoryService;

    //виводить всі категорії а админці
    @RequestMapping("/adminCategory")
    public String ShowCategory(Model model){
        model.addAttribute("categorys", categoryService.getAll());
        return "adminCategory";
    }

    //удаляє вибрану категорію в адмінці
    @RequestMapping ("/adminDeleteCategory/{id}")
    public String deleteCategory(@PathVariable String id){
        categoryService.deleteCategory(id);
        return "redirect:/adminCategory";
    }


    //addCategory
    @RequestMapping(value="/adminCategory", method = RequestMethod.POST)
    public String saveCategory (HttpServletResponse response, @RequestParam String categoryName
    ) throws IOException {

        if (categoryName.equals("")) {
            return "redirect:/adminCategory";
        }
        else
            categoryService.addCategory(categoryName);
        return "redirect:/adminCategory";

    }


}
