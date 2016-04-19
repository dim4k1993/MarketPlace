package com.servise;


import com.entity.Category;
import com.entity.PidCategory;
import com.repository.CategoryRepository;
import com.repository.PidCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PidCategoryService {

    @Autowired
    PidCategoryRepository pidCategoryRepository;

    @Autowired
    CategoryRepository categoryRepository;

    //додає під-категорії
    public void addPidCategory(String name, int id){
        PidCategory pidCategory = new PidCategory();
        pidCategory.setName(name);
        pidCategory.setCategory(showPidCategory(id));
        pidCategoryRepository.save(pidCategory);
    }

    //показує дікатегорію по категорії
    public Category showPidCategory(int id){
        return categoryRepository.findOne(id);
    }

    //дістає всі під-категорії
    public Iterable<PidCategory> getAll(){
        return pidCategoryRepository.findAll();
    }

    //удаляє вибрану під-катенорію
    public void deletePidCategory(String id){
        pidCategoryRepository.delete(Integer.parseInt(id));
    }

    //виводть під-категорію по id катерогії
    public Iterable<PidCategory> findPidCategoryByCategory(int id){
        return pidCategoryRepository.findPidCategoryFromCategoryId(id);
    }

    public Iterable<PidCategory> getPidCategory(int id){
        return pidCategoryRepository.findPidCategoryFromCategoryId(id);
    }
}
