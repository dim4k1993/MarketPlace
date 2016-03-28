package com.controller;


import com.entity.City;
import com.servise.CityService;
import com.servise.RegionService;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class RegistrationUserController {

    @Autowired
    UserService userService;
    @Autowired
    RegionService regionService;
    @Autowired
    CityService cityService;


    //відображення сторінки регістріції i модель регіонів і міст
    @RequestMapping(value= "/registration", method = RequestMethod.GET)
    public String ShowRegistration(Model model) {
        model.addAttribute("regionModel",regionService.getAll());
        return "registration";
    }


    // реєстрація юзера
    //перевірка чи заповнені всі поля
    // перевівка чи співпадають паролі
    // повертає сторінку реністріції
    @RequestMapping(value="/registration", method = RequestMethod.POST)
    public String saveRegistration ( HttpServletResponse response, @RequestParam String name,
                                    @RequestParam String lastName, @RequestParam  String email, @RequestParam String parol,
                                    @RequestParam String telephon_namber, @RequestParam String povtorParol) throws IOException {


        if (name.equals("") || lastName.equals("") || email.equals("") ||
                parol.equals("") || telephon_namber.equals("")||povtorParol.equals("")) {
            return "redirect:/registration";
        }
        if(parol.equals(povtorParol)) {
            userService.userRegistration(name, lastName, email, parol, telephon_namber);
            return "redirect:/loginUserPage";
        }
        return "redirect:/registration";
    }

}
