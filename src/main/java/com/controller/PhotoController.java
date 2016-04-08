//package com.controller;
//
//
//import com.servise.PhotoService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import java.security.Principal;
//
//
//@Controller
//public class PhotoController {
//
//    @Autowired
//    PhotoService photoService;
//
//    @RequestMapping(value = "/addAvatarPhoto")
//    public String showPhotoPage(@PathVariable("id") int id, Model model, Principal principal){
//
//        return "PhotoAvatar";
//    }
//
//
//
//}