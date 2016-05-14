package com.servise;

        import com.controller.CityController;
        import com.controller.PidCategoryController;
        import com.entity.Product;
        import com.entity.ProductPhotos;
        import com.entity.Role;
        import com.entity.User;
        import com.repository.ProductPhotosRepository;
        import com.repository.ProductRepository;
        import com.repository.UserRepository;
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

    @Autowired
    CityController cityController;

    @Autowired
    PidCategoryController pidCategoryController;


    @Autowired
    private ProductPhotosRepository productPhotosRepository;

    @Autowired
    private UserRepository userRepository;


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

    //виводть продукт по id user
    public Iterable<Product> findProductByUser(int id){
        return productRepository.findProductByUserId(id);
    }


    //удаляє вибраний продукт
    public String deleteProduct(int id){
        Product product = productRepository.findOne(id);
        product.setCity(null);
        product.setPidCategory(null);
        product.setUser(null);
        productRepository.delete(product);
        productRepository.delete(product.getId());
        return "redirect:/";
    }




//    public String getNameProduct(int id) {
//        return null;
//    }

}
