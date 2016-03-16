package com.servise;

import com.entity.Region;
import com.repository.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegionService {

    @Autowired
    RegionRepository regionRepository;

    // дістає всі області
    public Iterable<Region> getAll(){
        return regionRepository.findAll();
    }

}
