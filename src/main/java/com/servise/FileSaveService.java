package com.servise;



import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;


@Service
public interface FileSaveService{

        String saveFile (String dir,String userId, MultipartFile file, String uploadRootPath, String nameDiraction ) throws IOException ;

}
