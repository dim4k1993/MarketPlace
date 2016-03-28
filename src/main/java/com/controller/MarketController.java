package com.controller;

import java.util.ArrayList;
import java.util.List;

import com.entity.Category;
import com.repository.CategoryRepository;
import com.servise.CityService;
import com.servise.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MarketController {
	@Autowired
	CategoryRepository categoryRepository;

	// показує почадкову сторінку
	@RequestMapping("/")
	public String ShowPage() {
		return "marketPlace";
	}

//	@RequestMapping(value = "marketPlace/adCategory", method = RequestMethod.POST)
//	public String adCategory(@ModelAttribute Category category){
//		System.out.println(category.getCategoryName());
//		categoryRepository.save(category);
//		return "redirect:marketPlace";
//	}
}
	


