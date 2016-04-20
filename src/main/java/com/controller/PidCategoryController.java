package com.controller;

import com.entity.Category;
import com.entity.PidCategory;
import com.repository.PidCategoryRepository;
import com.servise.PidCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PidCategoryController {

    @Autowired
    PidCategoryService pidCategoryService;

    @Autowired
    PidCategoryRepository pidCategoryRepository;
    public PidCategory pidCategoryId;



    //пероходить до підкатегорії даної категорії
    //виводить під-категорії які доровнюють категорії в админці
    @RequestMapping("/pidCategory{id}")
    public String ShowPidCategoryFromIdCategory(@PathVariable String id, Model model){
        model.addAttribute("idCategory", id);
        model.addAttribute("pidcategorys", pidCategoryService.findPidCategoryByCategory(Integer.parseInt(id)));
        return "pidCategory";
    }

    @RequestMapping("/searchPidCategoryByIdCategory{index}/{id}")
    public String controlUrlCategory(Model model,@PathVariable String id,@PathVariable String index){
        model.addAttribute("index",index);
        if (index.equals("pidCategory")) {
            int idCategory = Integer.parseInt(id);
            searchPidCategoryByCategory(model,idCategory);
        }else
        if (index.equals("pidCategoryId")){
            searchIdByPidCategory(model,id);
        }
        return"searchPidCategoryByIdCategory";
    }

    public void searchPidCategoryByCategory(Model model, int id){
        model.addAttribute("pidCategoryCategory", pidCategoryService.getPidCategory(id));
        System.out.println(id);
    }

    public void searchIdByPidCategory(Model model, String id){
        int intId = Integer.parseInt(id);
        pidCategoryId = pidCategoryRepository.findOne(intId);
        System.out.println(id);
    }


}
