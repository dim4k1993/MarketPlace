package com.servise;

        import com.controller.CityController;
        import com.entity.Product;
        import com.entity.Role;
        import com.repository.ProductRepository;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;

        import java.util.HashMap;
        import java.util.Map;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CityController cityController;

    // створення мапи продуктів
    private int idForProduct;
    public Map<String, String> mapProduct = new HashMap<String, String>();


    //Метод додавання продукту
    public  void  saveProduct(Product product){
        productRepository.save(product);
    }

    public void comparisonProductVisit(int id) {
        if(productRepository.findOne(id) != null) {
            SearchInfoProduct(productRepository.findProductById(id).getId());
        }
    }


    //Метод перевірки на наявність емайла і пароля і заповнення мапи
    public void SearchInfoProduct(int idForProduct) {
            mapProduct.put("name", productRepository.findOne(idForProduct).getName());
            mapProduct.put("price",productRepository.findOne(idForProduct).getPrice());
            mapProduct.put("stanProducta",(productRepository.findOne(idForProduct).getStanProducta()));
            mapProduct.put("telephonNamber", productRepository.findOne(idForProduct).getTelephonNamber());
            mapProduct.put("nameUser",productRepository.findOne(idForProduct).getNameUser());
            mapProduct.put("city", productRepository.findOne(idForProduct).getCity().getName());
            mapProduct.put("text", productRepository.findOne(idForProduct).getText());
            mapProduct.put("email", productRepository.findOne(idForProduct).getEmail());
            mapProduct.put("skype", productRepository.findOne(idForProduct).getSkype());

    }

    // дістіє всі продукти
    public Iterable<Product> getAll(){
        return productRepository.findAll();
    }

    // удаляє вибраний продукт по id
    public void deleteProduct(String id){
        productRepository.delete(Integer.parseInt(id));
    }



}
