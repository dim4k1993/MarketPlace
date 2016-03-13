package com.repository;


import com.entity.Messenger;
import org.springframework.data.repository.CrudRepository;

public interface MessengerRepository extends CrudRepository<Messenger,Integer> {
}
