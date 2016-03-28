package com.controller;

import com.entity.Role;
import com.entity.User;
import com.repository.UserRepository;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;
	@Autowired
	UserService userService;
	@Autowired
	ShowModelUserController showModelUserController;

	@RequestMapping("/userAccount")
	public String ShowUser1(Model model, Principal principal){
		if (principal != null){
			User user = userRepository.findOne(Integer.parseInt(principal.getName()));
			model.addAttribute("user", user);
			return "redirect:/id" + principal.getName();
		}else {
			return "redirect:/";
		}
	}

	//присвоює id юзерові на сторінці
	@RequestMapping("/user_id{id}")
	public String ShowVisitUser1 (Model model,@PathVariable int id) {
		User owner = userRepository.findOne(id);
		if (owner == null) {
			return "newUser";
		}
		else {
			model.addAttribute("user", owner);
			return "userAccount";
		}
	}


}
