package com.controller;


import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShowModelUserController {

    @Autowired
    UserService userService;

// медад який заносить дані юзера в модеотку і показує їх
    public void ShowModelUserInfo ( Model model ) {
        model.addAttribute("firstNameMap", userService.mapUser.get("firstName"));
        model.addAttribute("lastNameMap", userService.mapUser.get("lastName"));
        model.addAttribute("emailMap",userService.mapUser.get("email"));
        model.addAttribute("telephon_namberMap",userService.mapUser.get("telephon_namber"));
        model.addAttribute("skypeMap",userService.mapUser.get("skype"));
        model.addAttribute("cityMap", userService.mapUser.get("city"));
        model.addAttribute("ragionMap", userService.mapUser.get("region"));
    }

}
