package com.controller;

import com.entity.Product;
import com.servise.PidCategoryService;
import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.security.Principal;

//контроллер роботи адміністротора
@Controller
public class AdminChangeProductController {

    @Autowired
    ProductService productService;

    @Autowired
    PidCategoryService pidCategoryService;

    // виводить всі продукти в адмінці
    @RequestMapping("/adminProduct")
    public String ShowProduct(Model model) {
        model.addAttribute("products",productService.getAll());
        return "adminProduct";
    }

    //удаляє вибраний продукт в адмінці
    @RequestMapping("/adminDeleteProduct/{id}")
    public String deleteProductAdmin (@PathVariable int id, Principal principal) throws IOException {
        productService.deleteProduct(id,principal);
        return "redirect:/adminProduct";
    }


    //пероходить до продукту даної під-категорії
    //виводить продукти які доровнюють під-категорії в админці
    @RequestMapping ("/adminProduct{id}")
    public String ShowProductFromNamePidCategory(@PathVariable String id,Model model){
        model.addAttribute("namePidCategory", id);
       // String id = Integer.toString(pidCategoryService.findPidCategoryByNamePidCategory(name).getId());
        model.addAttribute("products", productService.findProductByPidCategory(Integer.parseInt(id)));
        return "adminProduct";
    }


}
