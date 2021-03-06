package com.servise.impl;

import com.controller.CityController;
import com.controller.PidCategoryController;
import com.entity.Product;
import com.entity.ProductPhotos;
import com.repository.ProductPhotosRepository;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import com.servise.FileDeleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.security.Principal;

@Service
public class ProductServiceImpl implements com.servise.ProductService{

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    CityController cityController;

    @Autowired
    PidCategoryController pidCategoryController;


    @Autowired
    ProductPhotosRepository productPhotosRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    FileDeleteService fileDeleteService;


    //Метод додавання продукту
    // i додовання девофрлтної фотографії
    public  void  saveProduct(Product product, ProductPhotos productPhotos, Principal principal){
        product.setUser(userRepository.findOne(Integer.parseInt(principal.getName())));
        if (product.getCity() == null){
            System.out.println("error");
        }
        product.setPidCategory(pidCategoryController.pidCategoryId);
        product.setCity(cityController.cityId);
        productRepository.save(product);
        
        if(product.getProductPhotos() == null) {
            productPhotos.setFotoName("/resources/fileForMySyte/default/no-image.png");
            productPhotos.setProduct(product);
            productPhotosRepository.save(productPhotos);
        }
    }


    // дістіє всі продукти
    public Iterable<Product> getAll(){
        return productRepository.findAll();
    }

    //виводть ПРОДУКТ по id під-катерогії
    public Iterable<Product> findProductByPidCategory(int id){
        return productRepository.findProductFromPidCategoryId(id);
    }

    public Product getProductById(int id){
        return productRepository.findOne(id);
    }

    public String getNameProduct(int id){
        return productRepository.findOne(id).getName();
    }

    //виводть продукт по id user
    public Iterable<Product> findProductByUser(int id){
        return productRepository.findProductByUserId(id);
    }


    //удаляє вибраний продукт по id
    public void deleteProduct(int id,Principal principal) throws IOException {
        Product product = productRepository.findOne(id);
        fileDeleteService.deleteFile("C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\src\\main\\webapp\\resources\\uplodateFile\\" + principal.getName() + "\\productPhoto");
        fileDeleteService.deleteFile("C:\\Program Files\\apache-tomcat-8.0.33\\webapps\\ROOT\\resources\\uplodateFile\\" + principal.getName() + "\\productPhoto");
        fileDeleteService.deleteFile("  C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\target\\projektMVC-0.0.1-SNAPSHOT\\resources\\uplodateFile\\" + principal.getName() + "\\productPhoto");
        product.setCity(null);
        product.setPidCategory(null);
        product.setUser(null);
        productRepository.delete(product);
        productRepository.delete(product.getId());
    }




}
