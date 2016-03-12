package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.servise.UserService;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;


/*	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String comparisonUser (@RequestParam String password, @RequestParam String emailUser, Model model) {
		if (userService.comparisonUser(password,emailUser) == 0){
			model.addAttribute("nameMap", userService.mapUser.get("name"));
			model.addAttribute("lastNameMap", userService.mapUser.get("lastName"));
			model.addAttribute("telephonNamberMap", userService.mapUser.get("telephon_namber"));
			model.addAttribute("skypeMap", userService.mapUser.get("skype"));
			return "userAccount";
		}else if (userService.comparisonUser(password,emailUser) == 1){
			return "adminPage";
		}else if (userService.comparisonUser(password,emailUser) == 9) {
			return "errorPage";
		}
		return "errorPage";
	}*/

//відображення сторінки
	@RequestMapping("/registration")
	public String ShowRegistration() {
		return "registration";
	}
// реєстрація юзера
	@RequestMapping(value="/registration", method = RequestMethod.POST)
	public String saveRegistration (@RequestParam String name,
									@RequestParam String lastName, @RequestParam  String email, @RequestParam String parol,
									@RequestParam String telephon_namber,@RequestParam String povtorParol) throws IOException {
		if (name.equals("") || lastName.equals("") || email.equals("") ||
				parol.equals("") || telephon_namber.equals("")||povtorParol.equals("")) {
			return "redirect:/registration";
		}

		if(parol.equals(povtorParol)) {
			userService.userRegistration(name, lastName, email, parol, telephon_namber);
			return "redirect:/user";
		}
		return "redirect:/registration";
	}

// виводить всіх юзерів
	@RequestMapping("/user")
	public String ShowUser(Model model) {
		model.addAttribute("users",userService.getAll());
		return "user";
	}
// удаляє вибраного юзера
		@RequestMapping("/user/{id}")
		public String daleteUser (@PathVariable String id){
			userService.daleteUser(id);
			return "redirect:/user";
		}

	}

