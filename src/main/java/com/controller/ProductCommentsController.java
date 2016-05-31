//package com.controller;
//
//
//import com.entity.Messenger;
//import com.repository.ProductRepository;
//import com.servise.ProductCommentsService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import javax.validation.Valid;
//import java.security.Principal;
//
//@Controller
//public class ProductCommentsController {
//
//
//
//    @Autowired
//    ProductCommentsService productCommentsService;
//
//    @Autowired
//    ProductRepository productRepository;
//
//
//    //створення Comments
//    @ModelAttribute("Messenger")
//    public Messenger setMessenger(){
//        return new Messenger();
//    }
//
//
//    //додавання Comments
//    @RequestMapping(value = "/addComments",method = RequestMethod.POST)
//    public String addComments(Model model, @Valid @ModelAttribute Messenger messenger, Principal principal,BindingResult result){
//        productRepository.findOne(Integer.parseInt(principal.getName()));
//        productCommentsService.addCommentsFromProduct("Comments","EmailUser","ProductName", principal);
//        return "redirect:/newUser";
//    }
//}
