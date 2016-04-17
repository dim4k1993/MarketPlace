package com.controller;

import com.entity.User;
import com.repository.UserRepository;
import com.servise.FileSaveService;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
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

    // відображення сторінки settings + model
    @RequestMapping("/userSettings")
    public String ShowSettingsPage(Model model, Principal principal) {
        User user = userRepository.findOne(Integer.parseInt(principal.getName()));
        model.addAttribute("user", user);
        return "userSettings";
    }

    @RequestMapping(value = "/userSettings/addPhoto")
    public String addPhotoAvatar(@RequestParam (value ="photoAvatar")MultipartFile file,HttpServletRequest request,Principal principal ) throws IOException {
        if( file.getBytes().length >= 52428800){
            return "redirect:/addPhoto";
        }else {
            String uploadRootPath  = request.getServletContext().getRealPath("resources");
            String absolutePath = "C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\src\\main\\webapp\\resources";
            String fotoPath = fileSaveService.saveFile(principal.getName(), file, absolutePath);
            String fotoPath1 = fileSaveService.saveFile(principal.getName(), file, uploadRootPath );
            userService.savePhotoAvatarUser(userRepository.findOne(Integer.parseInt(principal.getName())), fotoPath.substring(56));
            System.out.println(fotoPath);
            System.out.println(fotoPath1);

        }
    return "redirect:/userSettings";
    }

}
