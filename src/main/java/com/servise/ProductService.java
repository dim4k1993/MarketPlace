package com.servise;
        import com.entity.Product;
        import com.entity.ProductPhotos;

        import java.io.IOException;
        import java.security.Principal;


public interface ProductService {

      void  saveProduct(Product product, ProductPhotos productPhotos, Principal principal);

     Iterable<Product> getAll();

     Iterable<Product> findProductByPidCategory(int id);

     Product getProductById(int id);

     Iterable<Product> findProductByUser(int id);

     void deleteProduct(int id ,Principal principal)  throws IOException;

     String getNameProduct(int id);

}
