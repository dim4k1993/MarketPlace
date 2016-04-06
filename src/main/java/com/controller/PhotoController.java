//package com.controller;
//
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import static org.springframework.data.jpa.domain.AbstractPersistable_.id;
//
//
//@Controller
//public class PhotoController {
//
//    @RequestMapping(value = "/foto")
//    String addFoto() {
//        return "foto";
//    }
//
//    @RequestMapping(value = "/settings/uptadelogo", method = RequestMethod.POST)
//    String addLogoSave(@RequestParam(value = "file") MultipartFile file) {
//        if (!(file.getOriginalFilename().endsWith(".jpeg")
//                || file.getOriginalFilename().endsWith(".png")
//                || file.getOriginalFilename().endsWith(".jpg"))) {
//            return "redirect:/addlogo?" + "wrongfile=true";
//        } else {
//
//
//            return "redirect:/profile/"+id;
//        }
//
//
//    }
//}