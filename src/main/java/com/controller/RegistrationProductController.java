package com.controller;


import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class RegistrationProductController {

    @Autowired
    ProductService productService;

//відображення сторінки додавання продукту
    @RequestMapping("/addProduct")
    public String showProdoct() {
        return "addProduct";
    }

//додавання продукту
    //перевірка чи заповнені всі поля
    // після заповнення повертає на почадкову сторінку
    @RequestMapping(value="/addProduct", method = RequestMethod.POST)
    public String saveProdoct (@RequestParam String name, @RequestParam String price, @RequestParam  String text, @RequestParam String stanProducta,
                                    @RequestParam String nameUser, @RequestParam String email, @RequestParam String telephonNamber, @RequestParam String skype){

        if (name.equals("") || price.equals("") || text.equals("") ||
                stanProducta.equals("") || nameUser.equals("")||email.equals("")||telephonNamber.equals("")) {
            return "redirect:/addProduct";
        }
            productService.addProduct(name,price,text,stanProducta,
                     nameUser, email,telephonNamber,skype);

        return "redirect:/";
    }

}

