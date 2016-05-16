package com.servise.impl;


import com.entity.Category;
import com.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements com.servise.CategoryService{

    @Autowired
    CategoryRepository categoryRepository;



    public void addCategory(String categoryName ){
        Category category = new Category();
        category.setCategoryName(categoryName);
        categoryRepository.save(category);
    }

    // дістає всі категорії
    public Iterable<Category> getAll(){
        return categoryRepository.findAll();
    }



    //знаходить кетегорію по назві
    public Category findIdCategoryByNameCategory(String nameCategory){
        return categoryRepository.findIdCategoryByNameCategory(nameCategory);
    }


    public void deleteCategory(String name){
        String id = Integer.toString(categoryRepository.findIdCategoryByNameCategory(name).getId());
        categoryRepository.delete(Integer.parseInt(id));
    }


}
