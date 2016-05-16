package com.controller;

import com.entity.Product;
import com.entity.User;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
public class ProductSettingsController {


    @Autowired
    UserRepository userRepository;

    @Autowired
    ProductRepository productRepository;

    private int productId;

//    // відображення сторінки ProductSettings
//    @RequestMapping("/productSettings")
//    public String ShowSettingsPageProduct(Model model, Principal principal) {
//        User user = userRepository.findOne(Integer.parseInt(principal.getName()));
//        model.addAttribute("user", user);
//        return "productSettings";
//    }



    //відображення сторінки продукта
    @RequestMapping("/productSettings")
    public String ShowSettingsPageProduct(Model model, Principal principal) {
        if (principal != null){
            User user = userRepository.findOne(Integer.parseInt(principal.getName()));
            model.addAttribute("user", user);
            Product product = productRepository.findOne(Integer.parseInt(principal.getName()));
            model.addAttribute("product", product);
            return "redirect:/productSettings_id" + principal.getName();
        }else {
            return "redirect:/";
        }
    }

    //присвоює id продукту на сторінці
    @RequestMapping("/productSettings_id{id}")
    public String ShowVisitProduct1 (Model model,Principal principal,@PathVariable int id) {
        Product product = productRepository.findOne(id);
        User user = userRepository.findOne(Integer.parseInt(principal.getName()));
        if (product == null) {
            return "newProduct";
        }
        else {
            productId = id;
            model.addAttribute("user", user);
            model.addAttribute("product", product);
            return "productSettings";
        }
    }


}
