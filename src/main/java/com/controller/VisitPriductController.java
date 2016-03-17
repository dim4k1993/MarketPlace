package com.controller;

import com.servise.ProductService;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VisitPriductController {

    @Autowired
    ProductService productService;
    @Autowired
    ShowModelProductController showModelProductController;

    // відображає сторінку продукта якщо зайшов гість
    @RequestMapping("/visitProduct")
    public String ShowVisitProduct(Model model) {
        showModelProductController.ShowModelProductInfo(model);
        return "visitPageProduct";
    }

    //присвоює id продукту на сторінці
    @RequestMapping("productPage/id{id}")
    public String ShowVisitProductId (@PathVariable int id, Model model) {
        productService.comparisonProductVisit(id);
        showModelProductController.ShowModelProductInfo(model);
        return "visitPageProduct";
    }
}
