package com.servise;

import com.entity.ProductPhotos;
import com.repository.ProductPhotosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductPhotoService {

    @Autowired
    private ProductPhotosRepository productPhotosRepository;


//    //Метод додавання дефолтного фото до продукту при регистрации продута
//    public  void  saveProductPhoto( ProductPhotos productPhotos){
//        productPhotos.setFotoName("/resources/default/no-image.png");
//        productPhotosRepository.save(productPhotos);
//    }


    //виводть foto по id Producta
    public Iterable<ProductPhotos> findProductPhotosByProduct(int id){
        return productPhotosRepository.getAllProductPhotoFromProduct(id);
    }
}
