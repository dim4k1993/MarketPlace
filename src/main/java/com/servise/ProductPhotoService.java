package com.servise;
import com.entity.ProductPhotos;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;


public interface ProductPhotoService {

//      void  saveProductPhotoFromProduct(String productPhotosFoto, int id);

    void  saveProductPhotoFromProduct(String productPhotos, String ProductName, Principal principal);
     Iterable<ProductPhotos> findProductPhotosByProduct(int id);

     Iterable<ProductPhotos> getAll ();

     int addPhotoProduct(MultipartFile file, HttpServletRequest request, Principal principal, int id) throws IOException;
}