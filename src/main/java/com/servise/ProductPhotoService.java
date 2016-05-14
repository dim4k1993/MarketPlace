package com.servise;

import com.entity.Product;
import com.entity.ProductPhotos;
import com.repository.ProductPhotosRepository;
import com.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
public class ProductPhotoService {

    @Autowired
    ProductPhotosRepository productPhotosRepository;

    @Autowired
    ProductService productService;

//    //Метод додавання дефолтного фото до продукту при регистрации продута
//    public  void  saveProductPhoto(ProductPhotos productPhotos){
//        productPhotos.setFotoName("/resources/fileForMySyte/default/no-image.png");
//        productPhotosRepository.save(productPhotos);
//    }

    //Метод додавання дефолтного фото до продукту
    public  void  saveProductPhotoFromProduct(String productPhotosFoto, int id){
        ProductPhotos productPhotos = new ProductPhotos();
        Product p = productService.getProductById(id);
        productPhotos.setFotoName(productPhotosFoto);
        productPhotos.setProduct(p);
        productPhotosRepository.save(productPhotos);
    }



    //виводть foto по id Producta
    public Iterable<ProductPhotos> findProductPhotosByProduct(int id){
        return productPhotosRepository.getAllProductPhotoFromProduct(id);
    }

    public Iterable<ProductPhotos> getAll () {
        return productPhotosRepository.findAll();
    }

}
