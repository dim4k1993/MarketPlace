package com.controller;

import java.util.ArrayList;
import java.util.List;

import com.entity.Category;
import com.repository.CategoryRepository;
import com.servise.CategoryService;
import com.servise.CityService;
import com.servise.ProductService;
import com.servise.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MarketController {
	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;

	// показує почадкову сторінку
	//виводить всі категорії а на головній сторінці
	@RequestMapping("/")
	public String ShowStartingPage(Model model) {
		model.addAttribute("categorys", categoryService.getAll());
		return "marketPlace";
	}


}
	


