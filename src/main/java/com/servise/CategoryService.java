package com.servise;


import com.entity.Category;


public interface CategoryService {

    void addCategory(String categoryName );

    Iterable<Category> getAll();

    Category findIdCategoryByNameCategory(String nameCategory);

    void deleteCategory(String name);
    }



