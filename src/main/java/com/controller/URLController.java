//package com.controller;
//
//import com.servise.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//@Controller
//public class URLController {
//
//    @Autowired
//    UserService userService;
//
//// метод для контроля URL
//   @RequestMapping(value = {"/{url}/id{id}","/{url}"})
//    public String ShowUserPrivate (Model model , @PathVariable String url) {
//        userService.mapUser.clear();
//        if (url.equals("userAccount")) return "redirect:/userAccount";
//        if (url.equals("adminAccount"))return "redirect:/adminAccount";
//        if (url.equals("visitUser"))return "redirect:/visitUser";
//        if (url.equals("registration")) return "redirect:/registration";
//        if (url.equals("addProduct")) return "redirect:/addProduct";
//        if (url.equals("loginUserPage")) return "redirect:/loginUserPage";
//        if (url.equals("errorPasswordOrLoginPage")) return "redirect:/errorPasswordOrLoginPage";
//        return "errorPage";
//
//    }
//}
