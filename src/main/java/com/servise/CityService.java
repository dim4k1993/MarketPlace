package com.servise;

import com.entity.City;
import com.repository.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CityService {

    @Autowired
    CityRepository cityRepository;

    // дістає всі міста
    public Iterable<City> getAll(){
        return cityRepository.findAll();
    }


    public Iterable<City> getCity(int id){
        return cityRepository.findByRegion(id);
    }
}
