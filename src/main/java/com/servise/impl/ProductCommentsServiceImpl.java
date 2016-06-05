package com.servise.impl;


import com.entity.Messenger;
import com.entity.Product;
import com.entity.ProductPhotos;
import com.repository.MessengerRepository;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import com.servise.ProductCommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.Principal;


@Service
public class ProductCommentsServiceImpl implements ProductCommentsService {




    @Autowired
    ProductRepository productRepository;

    @Autowired
    MessengerRepository messengerRepository;

    //Метод додавання Comments
    public  void  addCommentsFromProduct(Messenger messenger,int idProduct,Principal principal){
        Product product = productRepository.findProductById(idProduct);
        messenger.setProductReceivedComments(product);
        messengerRepository.save(messenger);
    }



}
