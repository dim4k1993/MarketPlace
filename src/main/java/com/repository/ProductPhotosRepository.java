package com.repository;

import com.entity.ProductPhotos;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


public interface ProductPhotosRepository extends CrudRepository<ProductPhotos, Integer> {

    @Query(value = "select a from ProductPhotos a where (a.product LIKE  concat(:productPhoto))")
    Iterable<ProductPhotos> getAllProductPhotoFromProduct(@Param("productPhoto") int productPhoto);


//    @Query(value = "select a from ProductPhotos a where (a.fotoName like concat(:fotoName)) and (a.product_id like concat(:productPhoto))")
//    ProductPhotos getDefaultProductFoto (@Param("fotoName") String photoName, @Param("productPhoto") int productPhoto);

}
