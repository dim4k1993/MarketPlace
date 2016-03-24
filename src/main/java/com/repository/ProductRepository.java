package com.repository;

import com.entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.RequestParam;


public interface ProductRepository extends CrudRepository<Product, Integer> {

    //дає id продуктові
    @Query(value = "select p from Product p where p.id = ?1")
    Product findProductById (int email);

    @Query(value = "select u from Product u where u.email = :email")
    Product findProductByEmail(@Param("email")String email);
}
