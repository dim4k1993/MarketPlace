package com.controller;


import com.entity.Product;
import com.servise.ProductService;
import com.servise.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class RegistrationProductController {

    @Autowired
    ProductService productService;

    @Autowired
    RegionService regionService;

//відображення сторінки додавання продукту
    @RequestMapping("/addProduct")
    public String showProduct(Model model) {
        model.addAttribute("regionModel",regionService.getAll());
        return "addProduct";
    }

    //створення продукту
    @ModelAttribute("product")
    public Product setProduct(){
        return new Product();
    }

    //додавання продукту
    @RequestMapping(value = "/registration=product+add",method = RequestMethod.POST)
    public String registrationProduct(@ModelAttribute Product product){
        productService.saveProduct(product);
        return "redirect:/productPage";
    }

}

