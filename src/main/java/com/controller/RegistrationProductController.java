package com.controller;


import com.entity.Product;
import com.entity.ProductPhotos;
import com.entity.User;
import com.repository.UserRepository;
import com.servise.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.IOException;
import java.security.Principal;


@Controller
public class RegistrationProductController {

    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;

    @Autowired
    ProductPhotoService productPhotoService;

    @Autowired
    RegionService regionService;

    @Autowired
    CategoryService categoryService;

    @Autowired
    UserRepository userRepository;

    @Autowired
    FileSaveService fileSaveService;

    //відображення сторінки додавання продукту
    @RequestMapping("/addProduct")
    public String showProduct(Model model, Principal principal ) {
        if(principal != null) {
            User user = userRepository.findOne(Integer.parseInt(principal.getName()));
            model.addAttribute("user", user);
        }
        model.addAttribute("regionModel",regionService.getAll());
        model.addAttribute("categoryModel",categoryService.getAll());
        return "addProduct";
    }

    //створення продукту
    @ModelAttribute("product")
    public Product setProduct(){
        return new Product();
    }


    //додавання продукту
    @RequestMapping(value = "/registration=product+add",method = RequestMethod.POST)
    public String registrationProduct(Model model, @Valid @ModelAttribute Product product, ProductPhotos productPhotos, Principal principal, BindingResult result){
        if(result.hasErrors()){
            model.addAttribute("regionModel",regionService.getAll());
            model.addAttribute("categoryModel",categoryService.getAll());
            return "addProduct";
        }
        productService.saveProduct(product, productPhotos, principal);
        return "redirect:/userAccount";
    }


//
//    //додавання фото продукту
//    @RequestMapping(value = "/addProduct/addPhotoProduct")
//    public String addPhotoProduct(@RequestParam(value ="photoProduct")MultipartFile file, HttpServletRequest request, Principal principal ) throws IOException {
//        if( file.getBytes().length >= 52428800){
//            return "redirect:/addPhotoProduct";
//        }else {
//            String uploadRootPath  = request.getServletContext().getRealPath("resources");
//            String absolutePath = "C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\src\\main\\webapp\\resources";
//            String fotoPath = fileSaveService.saveFileAvatarUser(principal.getName(), file, absolutePath,"productPhoto");
//            String fotoPath1 = fileSaveService.saveFileAvatarUser(principal.getName(), file, uploadRootPath,"productPhoto" );
//            productPhotoService.saveProductPhotoFromProduct(fotoPath.substring(56),productId);
//            System.out.println(fotoPath);
//            System.out.println(fotoPath1);
//        }
//        return "redirect:/addProduct";
//    }


}

