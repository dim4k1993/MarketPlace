package com.controller;

import com.entity.Product;
import com.repository.ProductRepository;
import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
public class ProductController {


    @Autowired
    ProductRepository productRepository;

    @Autowired
    ProductService productService;

    @Autowired
    ShowModelProductController showModelProductController;

    //відображення сторінки продукта
    @RequestMapping("/productPage")
    public String ShowProductPage(Model model, Principal principal) {
    if (principal != null){
        Product product = productRepository.findOne(Integer.parseInt(principal.getName()));
        model.addAttribute("product", product);
        return "redirect:/product_id" + principal.getName();
    }else {
        return "redirect:/";
    }
}

    //присвоює id юзерові на сторінці
    @RequestMapping("/product_id{id}")
    public String ShowVisitProduct1 (Model model,@PathVariable int id) {
        Product product = productRepository.findOne(id);
        if (product == null) {
            return "newProduct";
        }
        else {
            model.addAttribute("product", product);
            return "productPage";
        }
    }


    //пероходить до продукту даної під-категорії
    //виводить продукти які доровнюють під-категорії
    @RequestMapping ("/allProduct{id}")
    public String ShowProductFromIdPidCategory(@PathVariable String id,Model model){
        model.addAttribute("idPidCategory", id);
        model.addAttribute("products", productService.findProductByPidCategory(Integer.parseInt(id)));
        return "allProduct";
    }


}
