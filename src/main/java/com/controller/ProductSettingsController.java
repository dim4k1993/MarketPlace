package com.controller;

import com.entity.Product;
import com.entity.User;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import com.servise.FileSaveService;
import com.servise.ProductPhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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


    //додавання фото продукту productSettings
    @RequestMapping(value = "/productSettings/addPhotoProduct")
    public String addPhotoProductFromProductSettings(@RequestParam(value ="photoProduct")MultipartFile file, HttpServletRequest request, Principal principal ) throws IOException {
        if( file.getBytes().length >= 52428800){
            return "redirect:/addPhotoProductFromProductSettings";
        }else {
            String uploadRootPath  = request.getServletContext().getRealPath("resources");
            String absolutePath = "C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\src\\main\\webapp\\resources";
            String fotoPath = fileSaveService.saveFileAvatarUser(principal.getName(), file, absolutePath,"productPhoto");
            fileSaveService.saveFileAvatarUser(principal.getName(), file, uploadRootPath,"productPhoto" );
            productPhotoService.saveProductPhotoFromProduct(fotoPath.substring(56),productId);

        }
        return "redirect:/productSettings_id" + productId;
    }




}
