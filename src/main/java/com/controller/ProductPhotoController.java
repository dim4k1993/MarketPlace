//package com.controller;
//
//import com.servise.ProductPhotoService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import javax.servlet.http.HttpServletRequest;
//import java.io.IOException;
//import java.security.Principal;
//
//@Controller
//public class ProductPhotoController {
//
//    @Autowired
//    ProductPhotoService productPhotoService;
//
//    @RequestMapping("/product/{id}/productPhoto")
//    public String showProductPhotoPage(@PathVariable("id") int id, Model model, Principal principal){
//        model.addAttribute("productPhotos", productPhotoService.findProductPhotosByProduct(id));
//        return "productPage";
//    }
//
//    @RequestMapping(value = "/product/{id}/addFileProductPhoto")
//    public String addFileProductPhoto(@RequestParam(value = "file") MultipartFile file, HttpServletRequest request, Principal principal, @PathVariable("id") int id) throws IOException {
//        int rez = productPhotoService.auditAndAddProductPhotoFile(file,request,principal,id);
//        if (rez == 1){
//            return "Завеликий файл";
//        }
//        return "redirect:/product/{id}/productPhoto";
//    }
//
//}
