package com.shop.service;


import com.shop.entity.Image;

import java.io.File;
import java.io.IOException;

public interface ImageService extends BaseService<Image> {


    String uploadFile(File file) throws IOException;

    Image findByUrl(String url);

}
