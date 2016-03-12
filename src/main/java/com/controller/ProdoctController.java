package com.controller;


import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class ProdoctController {

    @Autowired
    ProductService productService;

//відображення сторінки
    @RequestMapping("/addProduct")
    public String showProdoct() {
        return "addProduct";
    }
//додавання продукту
    @RequestMapping(value="/addProduct", method = RequestMethod.POST)
    public String saveProdoct (@RequestParam String name, @RequestParam String price, @RequestParam  String text, @RequestParam String stanProducta,
                                    @RequestParam String nameUser, @RequestParam String email, @RequestParam String telephonNamber, @RequestParam String skype){

            double priceD = Double.parseDouble(price);
            productService.addProduct(name,priceD,text,stanProducta,
                     nameUser, email,telephonNamber,skype);
        return "redirect:/";
    }


  /*  @RequestMapping("/user")
    public String ShowProduct(Model model) {
        model.addAttribute("products",productService.getAll());
        return "user";
    }

    @RequestMapping("/user/{id}")
    public String daleteProdoct (@PathVariable String id){
        productService.daleteProduct(id);
        return "redirect:/user";
    }*/
}

