package com.controller;

import com.servise.CategoryService;
import com.servise.ProductService;
import com.servise.UserService;
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
public class AdminChangeController {

    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;


    // виводить всіх юзерів в адмінці
    @RequestMapping("/adminUser")
    public String ShowUser(Model model) {
        model.addAttribute("users",userService.getAll());
        return "adminUser";
    }
    // удаляє вибраного юзера в адмінці
    @RequestMapping("/adminDeleteUser/{id}")
    public String deleteUserPage (@PathVariable String id){
        userService.deleteUser(id);
        return "redirect:/adminUser";
    }


    // виводить всі продукти в адмінці
   @RequestMapping("/adminProduct")
    public String ShowProduct(Model model) {
       model.addAttribute("products",productService.getAll());
        return "adminProduct";
    }
    //удаляє вибраний продукт в адмінці
    @RequestMapping("/adminDeleteProduct/{id}")
    public String deleteProduct (@PathVariable String id){
        productService.deleteProduct(id);
        return "redirect:/adminProduct";
    }

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
    public String saveRegistration (HttpServletResponse response, @RequestParam String categoryName
    ) throws IOException {

        if (categoryName.equals("")) {
            return "redirect:/adminCategory";
        }
        else
            categoryService.addCategory(categoryName);
        return "redirect:/adminCategory";

    }

}