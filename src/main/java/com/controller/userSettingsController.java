package com.controller;

import com.entity.User;
import com.repository.UserRepository;
import com.servise.FileSaveService;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;

@Controller
public class UserSettingsController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    FileSaveService fileSaveService;

    @Autowired
    UserService userService;



    // відображення сторінки UserSettings + model
    @RequestMapping("/userSettings")
    public String ShowSettingsPageUser(Model model, Principal principal) {
        User user = userRepository.findOne(Integer.parseInt(principal.getName()));
        model.addAttribute("user", user);
        return "userSettings";
    }




    @RequestMapping(value = "/userSettings/addPhoto")
    public String addPhotoAvatar(@RequestParam(value = "photoAvatar") MultipartFile file, HttpServletRequest request, Principal principal) throws IOException {
        int rez = userService.addPhotoAvatar(file,request,principal);
        if (rez == 1){
            return "Завеликий файл";
        }
        return "redirect:/userSettings";
    }


}
