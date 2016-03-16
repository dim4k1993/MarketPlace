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

    //відображення сторінки юзера
    @RequestMapping("/productPage")
    public String ShowProductPage(Model model) {
        showModelProductController.ShowModelProductInfo(model);
        return "productPage";
    }

    //присвоює id продуктові на сторінці
    @RequestMapping("productPage/id{id}")
    public String ShowVisitUser1 (@PathVariable int id, Model model) {
        productService.comparisonProductVisit(id);
        showModelProductController.ShowModelProductInfo(model);
        return "productPage";
    }
}
