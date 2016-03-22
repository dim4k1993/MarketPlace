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

    @RequestMapping("/loginUserPage")
    public String redirectUrlLogin(){
        return "redirect:/login";
    }

    //відображення сторінки юзера
    @RequestMapping(value = "/loginUserPage",method = RequestMethod.GET)
    public String ShowUserPage(Model model) {
        return "loginUserPage";
    }

//    //Метод для входу на сторінку по email і паролю
//    //Метод оприділення юзера чи адмін якщо статус = 0 це юзер якщо = 1 то адмін
//    @RequestMapping(value = "/loginUserPage", method = RequestMethod.POST)
//    public String comparisonUser (HttpServletResponse response, @RequestParam String password, @RequestParam String username)throws IOException {
//        userService.mapUser.clear();
//        if (userService.comparisonUser(password,username) == 0){
//            return "redirect:/userAccount";
//        }
//        if (userService.comparisonUser(password, username) == 1){
//            return "redirect:/adminAccount";
//        }
//        return "errorPasswordOrLoginPage";
//    }

}
