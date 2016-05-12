package com.controller;

import com.entity.City;
import com.repository.CityRepository;
import com.servise.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CityController {

    @Autowired
    CityService cityService;
    @Autowired
    CityRepository cityRepository;
    public City cityId;


    //для регистрації

    @RequestMapping("/searchCityByIdRegion{index}/{id}")
    public String controlUrlRegion(Model model,@PathVariable String id,@PathVariable String index){
        model.addAttribute("index",index);


        if (index.equals("city")) {
            int idRegion = Integer.parseInt(id);
            searchCityByRegion(model,idRegion);
        }else
        if (index.equals("cityId")){
            searchIdByCity(model,id);
        }
        return"searchCityByIdRegion";
    }


    public void searchCityByRegion(Model model, int id){
        model.addAttribute("cityRegion", cityService.getCity(id));
        System.out.println(id);
    }

    public void searchIdByCity(Model model, String id){
        int intId = Integer.parseInt(id);
        cityId = cityRepository.findOne(intId);
        System.out.println(id);
    }





}