package com.controller;

import com.entity.Product;
import com.entity.Role;
import com.entity.User;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import com.servise.ProductService;
import com.servise.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

import static org.springframework.data.jpa.domain.AbstractPersistable_.id;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	ProductRepository productRepository;

	@Autowired
	UserService userService;

	@Autowired
	ProductService productService;

	@RequestMapping("/userAccount")
	public String ShowUser1( Model model, Principal principal){
		if (principal != null){
			User user = userRepository.findOne(Integer.parseInt(principal.getName()));
			model.addAttribute("user", user);

			return "redirect:/user_id" + principal.getName();
		}else {
			return "redirect:/";
		}
	}

	//присвоює id юзерові на сторінці
	//виводить продукти які він має
	//якщо такого іd нема виводить newUser
	@RequestMapping("/user_id{id}")
	public String ShowVisitUser1 (Model model,@PathVariable int id) {
		User owner = userRepository.findOne(id);

		if (owner == null) {
			return "newUser";
		}
		else {
			model.addAttribute("idUser", id);
			model.addAttribute("userProducts", productService.findProductByUser(id));

			model.addAttribute("user", owner);
			return "userAccount";
		}
	}



}
