package com.controller;


import com.entity.Product;
import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class ShowModelProductController {

    @Autowired
    ProductService productService;

    // медад який заносить дані юзера в модеотку і показує їх
    public void ShowModelProductInfo ( Model model ) {
        model.addAttribute("nameMap", productService.mapProduct.get("name"));
        model.addAttribute("priceMap", productService.mapProduct.get("price"));
        model.addAttribute("textMap", productService.mapProduct.get("text"));
        model.addAttribute("stanProductaMap", productService.mapProduct.get("stanProducta"));
        model.addAttribute("nameUserMap", productService.mapProduct.get("nameUser"));
        model.addAttribute("emailMap", productService.mapProduct.get("email"));
        model.addAttribute("telephonNamberMap", productService.mapProduct.get("telephonNamber"));
        model.addAttribute("skypeMap", productService.mapProduct.get("skype"));
        model.addAttribute("cityMap", productService.mapProduct.get("city"));

    }

}
