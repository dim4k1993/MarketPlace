package com.controller;

import com.entity.User;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;


@Controller
public class UserNoProductController {

	@Autowired
	UserRepository userRepository;



	@RequestMapping("/userAccountNoProduct")

	public String ShowUserAccountNoProduct(Model model,Principal principal){
		User user = userRepository.findOne(Integer.parseInt(principal.getName()));
		model.addAttribute("user", user);
			return "userAccountNoProduct";
		}


}
