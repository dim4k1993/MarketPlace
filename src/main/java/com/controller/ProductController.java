package com.controller;

import com.entity.Messenger;
import com.entity.Product;
import com.entity.ProductPhotos;
import com.entity.User;
import com.repository.ProductPhotosRepository;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import com.servise.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {


    @Autowired
    ProductRepository productRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    PidCategoryService pidCategoryService;

    @Autowired
    FileSaveService fileSaveService;

    @Autowired
    ProductService productService;

    @Autowired
    ProductPhotoService productPhotoService;

    @Autowired
    ProductCommentsService productCommentsService;


    private int productId;

    //відображення сторінки продукта
    @RequestMapping(value= "/productPage")
    public String ShowProductPage(Model model, Principal principal) {
    if (principal != null){

        return "redirect:/product_id" + principal.getName();
    }else {
        return "redirect:/";
    }
}

    //присвоює id продукту на сторінці
@RequestMapping(value = "/product_id{id}", method = RequestMethod.GET)
    public String ShowVisitProduct1 (Model model,@PathVariable int id) {
        Product product = productRepository.findOne(id);
        if (product == null) {
            return "newProduct";
        }
        else {
            productId = id;
            model.addAttribute("product", product);
            return "productPage";
        }
    }


    //пероходить до продукту даної під-категорії
    //виводить продукти які доровнюють під-категорії
    @RequestMapping ("/allProduct{id}")
    public String ShowProductFromIdPidCategory(@PathVariable String id,Model model){
        model.addAttribute("namePidCategory", id);
        model.addAttribute("products", productService.findProductByPidCategory(Integer.parseInt(id)));
        return "allProduct";
    }



    //створення Comments
    @ModelAttribute("messenger")
    public Messenger setMessenger(){
        return new Messenger();
    }

    //додавання Comments до продукту
    @RequestMapping(value = "/addComments=comment+add",method = RequestMethod.POST)
    public String addComments(Model model, @Valid @ModelAttribute Messenger messenger, BindingResult result, Principal principal){
        productCommentsService.addCommentsFromProduct(messenger,productId,principal);
        return "redirect:/product_id"+productId;
    }



}
