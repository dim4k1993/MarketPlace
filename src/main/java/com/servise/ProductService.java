package com.servise;

        import com.entity.Product;
        import com.repository.ProductRepository;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public void addProduct(String name,double price,String text,String stanProducta,
                           String nameUser,String email, String telephonNamber,String skype){
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

  /*  public Iterable<Product> getAll(){
        return productRepository.findAll();
    }

    public void daleteProduct(String id){
        productRepository.delete(Integer.parseInt(id));
    }*/

}
