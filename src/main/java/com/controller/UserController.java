package com.controller;

import com.entity.User;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import com.servise.ProductPhotoService;
import com.servise.ProductService;
import com.servise.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.security.Principal;


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

	@Autowired
	ProductPhotoService productPhotoService;


	@RequestMapping("/userAccount")
	@Transactional
	public String ShowUser1( Model model, Principal principal){
		if (principal != null){
			User user = userRepository.findOne(Integer.parseInt(principal.getName()));
			model.addAttribute("user", user);
			return "redirect:/user_id" + principal.getName();
		}

		else {
			return "redirect:/";
		}
	}


	//присвоює id юзерові на сторінці
	//виводить продукти які він має
	//якщо такого іd нема виводить newUser
	//виводить foto продуктів які він має
	//якщо user не має продукту то redirect добавить продукт. після того як добавить відкриває userAccount
	@RequestMapping("/user_id{id}")
	@Transactional
	public String ShowVisitUser1 (Model model,@PathVariable int id) {

		User owner = userRepository.findOne(id);
		if (owner == null) {
			return "newUser";
		}
		else {

			if (owner.getProduct().iterator().hasNext() == false) {

				return"redirect:/userAccountNoProduct";
			}

			model.addAttribute("idUser", id);
			model.addAttribute("products", productService.getAll());
			model.addAttribute("userProducts", productService.findProductByUser(id));
			model.addAttribute("productPhotos", productPhotoService.findProductPhotosByProduct(id));
			model.addAttribute("user", owner);
			return "userAccount";
		}
	}







	//удаляє вибраний продукт в User
@RequestMapping("/userDeleteProduct/{id}")
public String deleteProductUser (@PathVariable int id,Principal principal)throws IOException {
	productService.deleteProduct(id, principal );
	return "redirect:/userAccount";
}

}
