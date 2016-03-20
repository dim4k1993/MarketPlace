package com.servise;

        import com.entity.Product;
        import com.repository.ProductRepository;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;

        import java.util.HashMap;
        import java.util.Map;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    // створення мапи продуктів
    private int idForProduct;
    public Map<String, String> mapProduct = new HashMap<String, String>();

    // метод додавання продукту
    public void addProduct(String name, String price, String text, String stanProducta,
                           String nameUser, String email, String telephonNamber, String skype){
        Product product = new Product();
        product.setName(name);
        product.setPrice(price);
        product.setText(text);
        product.setStanProducta(stanProducta);
        product.setNameUser(nameUser);
        product.setEmail(email);
        product.setTelephonNamber(telephonNamber);
        product.setSkype(skype);
        productRepository.save(product);
    }

    public void comparisonProductVisit(int id) {
        if(productRepository.findOne(id) != null) {
            SearchInfoProduct(productRepository.findProductById(id).getId());
        }
    }


    //Метод перевірки на наявність емайла і пароля і заповнення мапи
    public int SearchInfoProduct(int idForProduct) {
            mapProduct.put("name", productRepository.findOne(idForProduct).getName());
            mapProduct.put("price",productRepository.findOne(idForProduct).getPrice());
            mapProduct.put("stanProducta",(productRepository.findOne(idForProduct).getStanProducta()));
            mapProduct.put("telephonNamber", productRepository.findOne(idForProduct).getTelephonNamber());
            mapProduct.put("nameUser",productRepository.findOne(idForProduct).getNameUser());
            mapProduct.put("city", productRepository.findOne(idForProduct).getCity().getName());
            mapProduct.put("text", productRepository.findOne(idForProduct).getText());
            mapProduct.put("email", productRepository.findOne(idForProduct).getEmail());
                try {
                    mapProduct.put("skype", productRepository.findOne(idForProduct).getSkype());
                } catch (NullPointerException e) {}
                return 0;
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
