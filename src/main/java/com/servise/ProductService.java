package com.servise;

        import com.controller.CityController;
        import com.entity.Product;
        import com.entity.ProductPhotos;
        import com.entity.Role;
        import com.repository.ProductPhotosRepository;
        import com.repository.ProductRepository;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;

        import java.security.Principal;
        import java.util.ArrayList;
        import java.util.HashMap;
        import java.util.List;
        import java.util.Map;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductPhotosRepository productPhotosRepository;


    //Метод додавання продукту
    public  void  saveProduct(Product product){
        productRepository.save(product);
    }
//
//    //Метод додавання foto продукту
//    public  void  saveProductPhoto( ProductPhotos productPhotos){
//        productPhotos.setFotoName("/resources/default/defaultFoto.png");
//        productPhotosRepository.save(productPhotos);
//    }

    // дістіє всі продукти
    public Iterable<Product> getAll(){
        return productRepository.findAll();
    }

    // удаляє вибраний продукт по id
    public void deleteProduct(String id){
        productRepository.delete(Integer.parseInt(id));
    }

    //виводть під-категорію по id катерогії
    public Iterable<Product> findProductByPidCategory(int id){
        return productRepository.findProductFromPidCategoryId(id);
    }

    //виводть продукт по id user
    public Iterable<Product> findProductByUser(int id){
        return productRepository.findProductByUserId(id);
    }




}
