package com.repository;

import com.entity.Region;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.web.bind.annotation.RequestParam;


public interface RegionRepository extends CrudRepository<Region,Integer> {

}
