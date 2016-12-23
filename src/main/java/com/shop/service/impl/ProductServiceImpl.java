package com.shop.service.impl;


import com.shop.dao.CategoryDao;
import com.shop.dao.ProductDao;
import com.shop.dto.ProductDto;
import com.shop.entity.Category;
import com.shop.entity.Image;
import com.shop.entity.Product;
import com.shop.service.BaseService;
import com.shop.service.ImageService;
import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class ProductServiceImpl extends BaseServiceImpl<Product> implements ProductService {


    @Autowired
    private ProductDao productDao;


    @Autowired
    private ImageService imageService;

    @Autowired
    private CategoryDao categoryDao;

    public List<Product> getProductByTitle(String title) {
        return productDao.getProductsByTitle(title);
    }

    @Override
    public List<Product> getProductsByPrice(Double startPrice, Double endPrice) {
        return productDao.getProductsWithPriceFromTo(startPrice, endPrice);
    }

    @Override
    public void deleteById(Long id) {
        productDao.deleteById(id);
    }

    @Override
    public Product saveProductDto(ProductDto productDto, MultipartFile image) throws IOException {
        Image dbImage = new Image();


        if (image.getSize() == 0) {
            dbImage.setUrl("http://www.newlifefamilychiropractic.net/wp-content/uploads/2014/07/300x300.gif");
        } else {
            File convertedImage = new File(image.getOriginalFilename());
            image.transferTo(convertedImage);
            dbImage.setUrl(imageService.uploadFile(convertedImage));
            convertedImage.delete();
        }
        Product product = new Product();
        product.setCategory(categoryDao.findById(productDto.getCategoryId()));
        product.setDescription(productDto.getDescription());
        product.setTitle(productDto.getTitle());
        product.setPrice(productDto.getPrice());
        productDao.create(product);
        dbImage.setProduct(product);
        imageService.create(dbImage);
        return product;
    }

    @Override
    public Product saveProduct(Product product, Long categoryId) {
        product.setCategory(categoryDao.findById(categoryId));
        productDao.update(product);
        return product;
    }


}
