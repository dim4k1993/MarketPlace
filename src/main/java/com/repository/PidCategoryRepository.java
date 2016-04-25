package com.repository;

import com.entity.Category;
import com.entity.PidCategory;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.Set;


public interface PidCategoryRepository extends CrudRepository<PidCategory,Integer> {

    @Query(value = "select a from PidCategory a where(a.category LIKE concat(:idCategory))")
    Iterable <PidCategory>findPidCategoryFromCategoryId(@Param("idCategory") int idCategory);

    @Query(value = "SELECT a from PidCategory a WHERE (a.name LIKE concat(:namePidCategory))")
    PidCategory findIdPidCategoryByNamePidCategory(@Param("namePidCategory") String namePidCategory);

}
