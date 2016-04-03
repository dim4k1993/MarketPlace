package com.controller;

import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

//контроллер роботи адміністротора
@Controller
public class AdminChangeProductController {

    @Autowired
    ProductService productService;

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

    //пероходить до продукту даної під-категорії
    //виводить продукти які доровнюють під-категорії в админці
    @RequestMapping ("/adminProduct{id}")
    public String ShowProductFromIdPidCategory(@PathVariable String id,Model model){
        model.addAttribute("idPidCategory", id);
        model.addAttribute("products", productService.findProductByPidCategory(Integer.parseInt(id)));
        return "adminProduct";
    }


}
