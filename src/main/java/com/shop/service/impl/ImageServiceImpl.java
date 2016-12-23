package com.shop.service.impl;


import com.cloudinary.Cloudinary;
import com.shop.dao.ImageDao;
import com.shop.dao.impl.BaseDaoImpl;
import com.shop.entity.Image;
import com.shop.service.BaseService;
import com.shop.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Service
public class ImageServiceImpl extends BaseDaoImpl<Image> implements ImageService {


    @Autowired
    private ImageDao imageDao;


    Map<String, String> configuration() {
        Map<String, String> clouMap = new HashMap<>();
        clouMap.put("cloud_name", "dehsjhkzx");
        clouMap.put("api_key", "925657455192194");
        clouMap.put("api_secret", "hLAMwN8M-PtICNCtfr32hNIOFIE");
        return clouMap;

    }

    public String uploadFile(File file) throws IOException {
        BufferedImage img = ImageIO.read(file);
        Cloudinary cloudinary = new Cloudinary(configuration());
        Map uploadResult = cloudinary.uploader().upload(file, new HashMap());
        System.out.print(uploadResult.get("secure_url"));
        return (String) uploadResult.get("secure_url");
    }

    @Override
    public Image findByUrl(String url) {
        return imageDao.findByUrl(url);
    }


}
