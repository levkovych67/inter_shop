package com.shop.service;


import com.shop.entity.Image;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

public interface ImageService extends BaseService<Image> {


    String uploadFile(MultipartFile file) throws IOException;

    Image findByUrl(String url);

}
