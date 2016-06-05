package com.controller;
import com.servise.CategoryService;
import com.servise.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MarketController {
	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;

	 //показує почадкову сторінку
	//виводить всі категорії а на головній сторінці
	@RequestMapping("/")
	public String ShowStartingPage(Model model) {
		model.addAttribute("categorys", categoryService.getAll());
		return "marketPlace";
	}


}
	


