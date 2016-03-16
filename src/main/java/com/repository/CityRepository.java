package com.repository;

import com.entity.City;
import com.entity.Region;
import org.springframework.data.repository.CrudRepository;

public interface CityRepository extends CrudRepository<City,Integer>{
    City findByRegion (Region region);

}
