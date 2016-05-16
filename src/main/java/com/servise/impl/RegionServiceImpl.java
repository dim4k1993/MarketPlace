package com.servise.impl;

import com.entity.Region;
import com.repository.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegionServiceImpl implements com.servise.RegionService{

    @Autowired
    RegionRepository regionRepository;

    // дістає всі області
    public Iterable<Region> getAll(){
        return regionRepository.findAll();
    }

}
