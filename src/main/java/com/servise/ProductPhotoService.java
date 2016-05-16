package com.servise;
import com.entity.ProductPhotos;


public interface ProductPhotoService {

      void  saveProductPhotoFromProduct(String productPhotosFoto, int id);

     Iterable<ProductPhotos> findProductPhotosByProduct(int id);

     Iterable<ProductPhotos> getAll ();
}