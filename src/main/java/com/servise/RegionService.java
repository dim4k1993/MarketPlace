package com.servise;

import com.entity.Region;
import com.repository.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


public interface RegionService {

     Iterable<Region> getAll();

}
