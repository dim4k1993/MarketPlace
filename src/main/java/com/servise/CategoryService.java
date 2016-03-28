package com.servise;


import com.entity.Category;
import com.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

    @Autowired
    CategoryRepository categoryRepository;

    public void addCategory(String categoryName ){
        Category category = new Category();
        category.setCategoryName(categoryName);
        categoryRepository.save(category);
    }


    // виводить всіх юзерів
    public Iterable<Category> getAll(){
        return categoryRepository.findAll();
    }

    // удаляє вибраного юзера
    public void deleteCategory(String id){
        categoryRepository.delete(Integer.parseInt(id));
    }
}
