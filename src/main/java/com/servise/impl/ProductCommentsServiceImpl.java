//package com.servise.impl;
//
//
//import com.entity.Messenger;
//import com.entity.Product;
//import com.entity.ProductPhotos;
//import com.repository.MessengerRepository;
//import com.repository.ProductRepository;
//import com.repository.UserRepository;
//import com.servise.ProductCommentsService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.security.Principal;
//
//
//@Service
//public class ProductCommentsServiceImpl implements ProductCommentsService {
//
//
//
//
//    @Autowired
//    ProductRepository productRepository;
//
//    @Autowired
//    MessengerRepository messengerRepository;
//
//    //Метод додавання Comments
//    public  void  addCommentsFromProduct(String Comments, String EmailUser, String ProductName, Principal principal){
//        Product product = productRepository.findProductByProductNameAndPrincipal(ProductName,Integer.parseInt(principal.getName()));
//
//            Messenger comments = new Messenger();
//            comments.setProductReceivedComments(product);
//            comments.setMessenger(Comments);
//            comments.setUserEmailSendCommentsForProduct(EmailUser);
//            messengerRepository.save(comments);
//
//
//    }
//
//
//
//
//}
