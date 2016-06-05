package com.repository;


import com.entity.Messenger;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface MessengerRepository extends CrudRepository<Messenger,Integer> {

//    @Query(value = "select a from Messenger a where(a.product LIKE concat(:idProduct))")
//    Iterable <Messenger>findCommentsByProductId(@Param("idProduct") int idProduct);
}
