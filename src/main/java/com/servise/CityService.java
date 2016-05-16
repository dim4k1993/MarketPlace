package com.servise;

import com.entity.City;

public interface CityService {

    Iterable<City> getAll();

    Iterable<City> getCity(int id);

}


