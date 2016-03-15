package com.controller;


import com.repository.UserRepository;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class LoginController {

    @Autowired
    UserService userService;

    @Autowired
    UserRepository userRepository;

    @Autowired
    ShowModelUserController showModelUserController;


    //відображення сторінки юзера
    @RequestMapping(value = "/loginUserPage",method = RequestMethod.GET)
    public String ShowUserPage(Model model) {
        return "loginUserPage";
    }


    @RequestMapping(value = "/loginUserPage", method = RequestMethod.POST)
    public String comparisonUser (HttpServletResponse response, @RequestParam String parol, @RequestParam String email)throws IOException {
        userService.mapUser.clear();
        if (userService.comparisonUser(parol,email) == 0){
            return "redirect:/userAccount";
        }
        if (userService.comparisonUser(parol, email) == 1){
            return "redirect:/adminAccount";
        }
        return "errorPasswordOrLoginPage";
    }

}
