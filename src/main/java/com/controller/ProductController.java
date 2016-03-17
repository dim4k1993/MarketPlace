package com.controller;

import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

    @Autowired
    ProductService productService;

    @Autowired
    ShowModelProductController showModelProductController;

    //відображення сторінки продукта
    @RequestMapping("/productPage")
    public String ShowProductPage(Model model) {
        showModelProductController.ShowModelProductInfo(model);
        return "productPage";
    }

}
