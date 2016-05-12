package com.servise;

import com.entity.Product;
import com.entity.ProductPhotos;
import com.repository.ProductPhotosRepository;
import com.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;

@Service
public class ProductPhotoService {

    @Autowired
    private ProductPhotosRepository productPhotosRepository;

 @Autowired
    private ProductRepository productRepository;

 @Autowired
    private ProductService productService;

 @Autowired
    private FileSaveService fileSaveService;


//    //Метод додавання дефолтного фото до продукту при регистрации продута
//    public  void  saveProductPhoto( ProductPhotos productPhotos){
//        productPhotos.setFotoName("/resources/default/no-image.png");
//        productPhotosRepository.save(productPhotos);
//    }


    //виводть foto по id Producta
    public Iterable<ProductPhotos> findProductPhotosByProduct(int id){
        return productPhotosRepository.getAllProductPhotoFromProduct(id);
    }
//
//     public int auditAndAddProductPhotoFile(MultipartFile file, HttpServletRequest request, Principal principal, int id) throws IOException {
//        return 0;
//    }
//
//    public void addPhotoProduct(String photo,String productName, Principal principal){
//        Product product = productRepository.findProductByProductNameAndPrincipal(productName,Integer.parseInt(principal.getName()));
//        if (productPhotosRepository.getDefaultFoto("/resources/default/no-image.png", product.getId()) != null) {
//            ProductPhotos f =  product.getProductPhotos().iterator().next();
//            f.setProduct(product);
//            f.setFotoName(photo);
//            productPhotosRepository.save(f);
//        }else{
//            ProductPhotos f = new ProductPhotos();
//            f.setProduct(product);
//            f.setFotoName(photo);
//            productPhotosRepository.save(f);
//        }
//    }
//
//
//    public void save(ProductPhotos productPhotos) {
//        productPhotosRepository.save(productPhotos);
//    }
//
//    public int auditAndAddFotoFile(MultipartFile file, HttpServletRequest request, Principal principal, int id) throws IOException {
//        if( file.getBytes().length >= 10000000){
//            return 1;
//        }else {
//            String uploadRootPath1  = request.getServletContext().getRealPath("resources");
//            String absolutePath1 = "C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\src\\main\\webapp\\resources";
//            String productName = productService.getNameProduct(id);
//            String fotoPath = fileSaveService.saveFileProductPhoto(principal.getName(), file, uploadRootPath1);
//            fileSaveService.saveFileProductPhoto(principal.getName(), file, absolutePath1);
//            addPhotoProduct(fotoPath.substring(56),productName, principal);
//            System.out.println(uploadRootPath1);
//        }
//        return 0;
//    }
}
