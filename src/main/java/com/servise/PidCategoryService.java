package com.servise;


import com.entity.Category;
import com.entity.PidCategory;


public interface PidCategoryService {

     void addPidCategory(String name, int id);

     Category showPidCategory(int id);

     Iterable<PidCategory> getAll();

     void deletePidCategory(String id);

     Iterable<PidCategory> findPidCategoryByCategory(int id);

     PidCategory findPidCategoryByNamePidCategory(String namePidCategory);

     Iterable<PidCategory> getPidCategory(int id);
}

