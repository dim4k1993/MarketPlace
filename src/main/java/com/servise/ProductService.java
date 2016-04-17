package com.servise;

        import com.controller.CityController;
        import com.entity.Product;
        import com.entity.ProductPhotos;
        import com.entity.Role;
        import com.repository.ProductPhotosRepository;
        import com.repository.ProductRepository;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;
        import org.springframework.web.bind.annotation.RequestMapping;

        import java.security.Principal;
        import java.util.ArrayList;
        import java.util.HashMap;
        import java.util.List;
        import java.util.Map;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;


    //Метод додавання продукту
    public  void  saveProduct(Product product){
        productRepository.save(product);
    }


    // дістіє всі продукти
    public Iterable<Product> getAll(){
        return productRepository.findAll();
    }

//    // дістіє один продукти
//    public Product getOne(int id){
//        return productRepository.findOne(id);
//    }
//
//    // удаляє вибраний продукт по id
//    public void deleteProductById(String id){
//        productRepository.delete(Integer.parseInt(id));
//    }
//
//    // удаляє вибраний продукт
//    public void deleteProduct(Product product){
//        productRepository.delete(product);
//    }

    //виводть ПРОДУКТ по id під-катерогії
    public Iterable<Product> findProductByPidCategory(int id){
        return productRepository.findProductFromPidCategoryId(id);
    }

    //виводть продукт по id user
    public Iterable<Product> findProductByUser(int id){
        return productRepository.findProductByUserId(id);
    }


    //удаляє вибраний продукт
    public String deleteProduct (int id){
        Product product = productRepository.findOne(id);
        product.setCity(null);
        product.setPidCategory(null);
        product.setUser(null);
        productRepository.delete(product);
        productRepository.delete(product.getId());
        return "redirect:/adminProduct";
    }


}
