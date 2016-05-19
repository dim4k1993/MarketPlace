package com.controller;

import com.entity.Product;
import com.entity.ProductPhotos;
import com.repository.ProductPhotosRepository;
import com.repository.ProductRepository;
import com.servise.FileSaveService;
import com.servise.PidCategoryService;
import com.servise.ProductPhotoService;
import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {


    @Autowired
    ProductRepository productRepository;

    @Autowired
    PidCategoryService pidCategoryService;

    @Autowired
    FileSaveService fileSaveService;

    @Autowired
    ProductService productService;

    @Autowired
    ProductPhotoService productPhotoService;

    private int productId;

    //відображення сторінки продукта
    @RequestMapping("/productPage")
    public String ShowProductPage(Model model, Principal principal) {
    if (principal != null){
        Product product = productRepository.findOne(Integer.parseInt(principal.getName()));
        model.addAttribute("product", product);
        model.addAttribute("productPhotos", productPhotoService.findProductPhotosByProduct(Integer.parseInt(principal.getName())));
        return "redirect:/product_id" + principal.getName();
    }else {
        return "redirect:/";
    }
}

    //присвоює id продукту на сторінці
@RequestMapping("/product_id{id}")
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
        //String id = Integer.toString(pidCategoryService.findPidCategoryByNamePidCategory(name).getId());
        model.addAttribute("products", productService.findProductByPidCategory(Integer.parseInt(id)));
        return "allProduct";
    }

    //додавання фото продукту
    @RequestMapping(value = "/addProduct/addPhotoProduct")
    public String addPhotoProduct(@RequestParam(value ="photoProduct")MultipartFile file, HttpServletRequest request, Principal principal ) throws IOException {
        if( file.getBytes().length >= 52428800){
            return "redirect:/addPhotoProduct";
        }else {
            String uploadRootPath  = request.getServletContext().getRealPath("resources");
            String absolutePath = "C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\src\\main\\webapp\\resources";
            String fotoPath = fileSaveService.saveFileAvatarUser(principal.getName(), file, absolutePath,"productPhoto");
            String fotoPath1 = fileSaveService.saveFileAvatarUser(principal.getName(), file, uploadRootPath,"productPhoto" );
            productPhotoService.saveProductPhotoFromProduct(fotoPath.substring(56),productId);
            System.out.println(fotoPath);
            System.out.println(fotoPath1);
        }
        return "redirect:/product_id" + productId;
    }






}
