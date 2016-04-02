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

    public void addPidCategory(String name, int id){
        PidCategory pidCategory = new PidCategory();
        pidCategory.setName(name);
        pidCategory.setCategory(showPidCategory(id));
        pidCategoryRepository.save(pidCategory);
    }

    public Category showPidCategory(int id){
        return categoryRepository.findOne(id);

    }

    public Iterable<PidCategory> getAll(){
        return pidCategoryRepository.findAll();
    }
    public void deletePidCategory(String id){
        pidCategoryRepository.delete(Integer.parseInt(id));
    }

}
