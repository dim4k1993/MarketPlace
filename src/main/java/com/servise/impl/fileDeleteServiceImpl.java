package com.servise.impl;

import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;

import static org.apache.commons.io.FileUtils.deleteDirectory;

@Service
public class FileDeleteServiceImpl implements com.servise.FileDeleteService {

    public void deleteFile(String uploadRootPath) throws IOException {
        File file = new File(uploadRootPath);
        if(file.isDirectory()) {
            deleteDirectory(file);
        }else{
            file.delete();
        }
    }



}
