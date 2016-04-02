package com.controller;

import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

//контроллер роботи адміністротора
@Controller
public class AdminChangeUserController {
    @Autowired
    UserService userService;

    // виводить всіх юзерів в адмінці
    @RequestMapping("/adminUser")
    public String ShowUser(Model model) {
        model.addAttribute("users",userService.getAll());
        return "adminUser";
    }
    // удаляє вибраного юзера в адмінці
    @RequestMapping("/adminDeleteUser/{id}")
    public String deleteUserPage (@PathVariable String id){
        userService.deleteUser(id);
        return "redirect:/adminUser";
    }


}
