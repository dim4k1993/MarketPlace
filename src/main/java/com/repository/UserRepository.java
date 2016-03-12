package com.repository;

import com.entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.web.bind.annotation.RequestParam;


public interface UserRepository extends CrudRepository<User,Integer> {

   /* @Query(value = "select u from User u where u.email = ?1 and u.password = ?2")
    User findUserByEmailAndPassword (@RequestParam String emailUser, @RequestParam String password);*/
}
