package com.controller;

import com.entity.Product;
import com.entity.User;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import com.servise.FileSaveService;
import com.servise.ProductPhotoService;
import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;

@Controller
public class ProductSettingsController {


    @Autowired
    UserRepository userRepository;

    @Autowired
    ProductPhotoService productPhotoService;

    @Autowired
    FileSaveService fileSaveService;


    @Autowired
    ProductRepository productRepository;

    @Autowired
    ProductService productService;



    int productId;

    //відображення сторінки продукта
    @RequestMapping(value = "/productSettings")
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


    @RequestMapping(value = "/productSettings_id{id}")
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

   //додавання фото продукту productSettings

    @RequestMapping(value = "/productSettings/addPhotoProduct")
    public String addPhotoProduct(@RequestParam(value = "photoProduct") MultipartFile file, HttpServletRequest request, Principal principal) throws IOException {
        int rez = productPhotoService.addPhotoProduct(file,request,principal,productId);
        if (rez == 1){
            return "Завеликий файл";
        }
        return "redirect:/productSettings_id" + productId;
    }


}
