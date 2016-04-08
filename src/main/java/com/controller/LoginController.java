package com.controller;


import com.repository.UserRepository;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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


    @RequestMapping("/loginUserPage")
    public String redirectUrlLogin(){
        return "redirect:/login";
    }

    //відображення сторінки юзера
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String ShowUserPage(Model model) {
        return "loginUserPage";
    }

    @RequestMapping(value = "/logout")
       public String logout(){
        SecurityContextHolder.getContext().setAuthentication(null);
        return "redirect:/";
    }




}
