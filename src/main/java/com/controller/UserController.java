package com.controller;

import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.servise.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	ShowModelUserController showModelUserController;

	//відображення сторінки юзера
	@RequestMapping("/userAccount")
	public String ShowUserPage(Model model) {
		showModelUserController.ShowModelUserInfo(model);
		return "userAccount";
	}
	}

