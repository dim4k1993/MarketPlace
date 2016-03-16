package com.controller;

import java.util.ArrayList;
import java.util.List;

import com.servise.CityService;
import com.servise.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MarketController {

	// показує почадкову сторінку
	@RequestMapping("/")
	public String ShowPage() {
		return "marketPlace";
	}
}
	


