package com.repository;


import com.entity.Category;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface CategoryRepository extends CrudRepository<Category,Integer>{

    @Query(value = "SELECT a from Category a WHERE (a.categoryName LIKE concat(:nameCategory))")
    Category findIdCategoryByNameCategory(@Param("nameCategory") String nameCategory);
}
