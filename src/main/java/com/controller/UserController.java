package com.controller;

import com.repository.UserRepository;
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
	@Autowired
	UserRepository userRepository;

	//відображення сторінки юзера
	@RequestMapping("/user")
	public String ShowUserPage() {
		return "user";
	}

	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String comparisonUser (@RequestParam String parol, @RequestParam String email)throws IOException  {
		userService.mapUser.clear();
		if (userService.comparisonUser(parol,email) == 0){
			return "redirect:/userAccount";
		}
		if (userService.comparisonUser(parol, email) == 1){
			return "redirect:/adminAccount";
		}
		return "errorPasswordOrLoginPage";
	}

	@RequestMapping(value = "/userAccount")
	public String ShowUserInfo ( Model model ) {
		model.addAttribute("firstNameMap", userService.mapUser.get("firstName"));
		model.addAttribute("lastNameMap", userService.mapUser.get("lastName"));
		model.addAttribute("emailMap",userService.mapUser.get("email"));
		model.addAttribute("telephon_namberMap",userService.mapUser.get("telephon_namber"));
		model.addAttribute("skypeMap",userService.mapUser.get("skype"));
		return "userAccount";
	}


/*
	//дає id юзерові
	@RequestMapping(value = "/user/id{id}", method = RequestMethod.GET)
	public String ShowUserVisit (@PathVariable("id") int email) {
		userService.mapUser.clear();
		userService.comparisonUserVisit(email);
		return "redirect:/userAccount/id{id}";
	}
*/



//відображення сторінки регістріції
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

	}

