package com.servise.impl;


import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;

@Service
public class FileSaveServiceImpl implements com.servise.FileSaveService{

        public String saveFileAvatarUser (String userId, MultipartFile file, String uploadRootPath, String nameDiraction ) throws IOException {
        File uploadRootDir = new File(uploadRootPath+File.separator+"uplodateFile"+File.separator+userId+File.separator+nameDiraction);
        String originalName = null;
        if (!uploadRootDir.exists()){
            uploadRootDir.mkdirs();
        }
        if (file.getOriginalFilename().endsWith(".jpg")){
            originalName = file.getOriginalFilename().replaceAll(".jpg","user");
        }
        if (file.getOriginalFilename().endsWith(".png")){
            originalName = file.getOriginalFilename().replaceAll(".png","user");
        }
        BufferedImage bi =  ImageIO.read(new ByteArrayInputStream(file.getBytes()));
        File path = new File(uploadRootDir+File.separator+originalName+String.valueOf(userId)+".jpg");
        ImageIO.write(bi,"jpg",path);
        return String.valueOf(path.getPath());
        }



}