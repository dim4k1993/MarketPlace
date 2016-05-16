package com.servise;


import com.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.Principal;

@Service
public interface FileSaveService{

        String saveFileAvatarUser (String userId, MultipartFile file, String uploadRootPath, String nameDiraction ) throws IOException ;

}
