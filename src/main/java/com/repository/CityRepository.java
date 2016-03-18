package com.repository;

import com.entity.City;
import com.entity.Region;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.Set;

public interface CityRepository extends CrudRepository<City,Integer>{


    @Query(value = "select name from City b where (b.region like concat(:region))")
    Set<City> findByRegion(@Param("region") int region);


    @Query(value = "select c from City c where c.name =:name")
    Set<City> findByCity(@Param("name") String name);

}
