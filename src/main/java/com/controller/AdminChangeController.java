package com.controller;

import com.servise.ProductService;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//контроллер роботи адміністротора
@Controller
public class AdminChangeController {

    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;

    // виводить всіх юзерів в адмінці
    @RequestMapping("/adminDeleteUser")
    public String ShowUser(Model model) {
        model.addAttribute("users",userService.getAll());
        return "adminDeleteUser";
    }
    // удаляє вибраного юзера в адмінці
    @RequestMapping("/adminDeleteUser/{id}")
    public String deleteUserPage (@PathVariable String id){
        userService.deleteUser(id);
        return "redirect:/adminDeleteUser";
    }


    // виводить всі продукти в адмінці
   @RequestMapping("/adminDeleteProduct")
    public String ShowProduct(Model model) {
       model.addAttribute("products",productService.getAll());
        return "adminDeleteProduct";
    }
    //удаляє вибраний продукт в адмінці
    @RequestMapping("/adminDeleteProduct/{id}")
    public String deleteProduct (@PathVariable String id){
        productService.deleteProduct(id);
        return "redirect:/adminDeleteProduct";
    }

}