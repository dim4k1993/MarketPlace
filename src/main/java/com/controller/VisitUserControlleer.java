package com.controller;

import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VisitUserControlleer {

    @Autowired
    UserService userService;
    @Autowired
    ShowModelUserController showModelUserController;


    @RequestMapping("/visitUser")
    public String ShowVisitUser(Model model) {
        showModelUserController.ShowModelUserInfo(model);
        return "visitPage";
    }
    @RequestMapping("userAccount/id{id}")
    public String ShowVisitUser1 (@PathVariable int id, Model model) {
        userService.comparisonUserVisit(id);
        showModelUserController.ShowModelUserInfo(model);
        return "visitPage";
    }

}
