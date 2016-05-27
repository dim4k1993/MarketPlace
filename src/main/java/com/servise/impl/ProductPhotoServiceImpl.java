package com.servise.impl;


import com.entity.Product;
import com.entity.ProductPhotos;
import com.repository.ProductPhotosRepository;
import com.repository.ProductRepository;
import com.servise.FileSaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;

@Service
public class ProductPhotoServiceImpl implements com.servise.ProductPhotoService{

    @Autowired
    ProductPhotosRepository productPhotosRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    ProductServiceImpl productService;

    @Autowired
    FileSaveService fileSaveService;

    //Метод додавання  фото до продукту
//    public  void  saveProductPhotoFromProduct(String productPhotosFoto, int id){
//
//        ProductPhotos productPhotos = new ProductPhotos();
//        Product p = productService.getProductById(id);
//        productPhotos.setFotoName(productPhotosFoto);
//        productPhotos.setProduct(p);
//        productPhotosRepository.save(productPhotos);
//    }
//

    //Метод додавання  фото до продукту
    public  void  saveProductPhotoFromProduct(String productPhotos, String ProductName, Principal principal){
        Product product = productRepository.findProductByProductNameAndPrincipal(ProductName,Integer.parseInt(principal.getName()));
        if(productPhotosRepository.getDefaultProductFoto("/resources/fileForMySyte/default/no-image.png",product.getId())!=null){
            ProductPhotos pf = product.getProductPhotos().iterator().next();
            pf.setProduct(product);
            pf.setFotoName(productPhotos);
            productPhotosRepository.save(pf);
        }else {
            ProductPhotos pf = new ProductPhotos();
            pf.setProduct(product);
            pf.setFotoName(productPhotos);
            productPhotosRepository.save(pf);
        }

    }



    //виводть foto по id Producta
    public Iterable<ProductPhotos> findProductPhotosByProduct(int id){
        return productPhotosRepository.getAllProductPhotoFromProduct(id);

    }



    //додавання фото продукту productSettings
    public int addPhotoProduct(@RequestParam(value ="photoProduct")MultipartFile file, HttpServletRequest request, Principal principal,int id ) throws IOException {
        if( file.getBytes().length >= 52428800){
            return 1;
        }else {
            String uploadRootPath  = request.getServletContext().getRealPath("resources");
            String absolutePath = "C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\src\\main\\webapp\\resources";
            String ProductName = productService.getNameProduct(id);
            String fotoPath = fileSaveService.saveFile("productPhoto",principal.getName(), file, absolutePath,"productPhoto");
            fileSaveService.saveFile("productPhoto",principal.getName(), file, uploadRootPath,"productPhoto" );
            saveProductPhotoFromProduct(fotoPath.substring(56),ProductName,principal);

        }
        return 0;
    }




    public Iterable<ProductPhotos> getAll () {
        return productPhotosRepository.findAll();
    }

}
