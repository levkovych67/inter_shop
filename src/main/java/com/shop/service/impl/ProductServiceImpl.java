package com.shop.service.impl;


import com.shop.dao.CategoryDao;
import com.shop.dao.ProductDao;
import com.shop.dto.ProductDto;
import com.shop.entity.Category;
import com.shop.entity.Image;
import com.shop.entity.Product;
import com.shop.service.BaseService;
import com.shop.service.CategoryService;
import com.shop.service.ImageService;
import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
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
    private CategoryService categoryService;

    public List<Product> getProductByTitle(String title) {
        return productDao.getProductsByTitle(title);
    }

    @Override
    public List<Product> getProductsByPrice(Double startPrice, Double endPrice,Integer pageSize,Integer pageNumber) {
        return productDao.getProductsWithPriceFromTo(startPrice, endPrice,  pageSize,  pageNumber);
    }

    @Override
    public void deleteById(Long id) {
        productDao.deleteById(id);
    }

    @Override
    public Product saveProductDto(ProductDto productDto, MultipartFile image) throws IOException {
        List<Image> list = transformImageToList(image);
        Product product = new Product();
        product.setCategory(categoryService.findById(productDto.getCategoryId()));
        product.setDescription(productDto.getDescription());
        product.setTitle(productDto.getTitle());
        product.setPrice(productDto.getPrice());
        product.setImages(list);
        productDao.create(product);
        return product;
    }

    @Override
    public Product saveProduct(Product product, Long categoryId, MultipartFile file) throws IOException {
        Product deprecatedProduct = productDao.findById(product.getId());
        if(file.getSize()!= 0){
            List<Image> list = transformImageToList(file);
            product.setImages(list);
        } else {
            product.setImages(deprecatedProduct.getImages());
        }
        product.setComments(deprecatedProduct.getComments());
        product.setCategory(categoryService.findById(categoryId));
        productDao.update(product);
        return product;
    }

    @Override
    public List<Image> transformImageToList(MultipartFile image) throws IOException {
        Image dbImage = new Image();
        List<Image> list = new ArrayList<>();
        if (image.getSize() == 0) {
            dbImage.setUrl("http://placehold.it/300x300");
            list.add(dbImage);
            return list;
        } else {
             dbImage.setUrl(imageService.uploadFile(image));
             list.add(dbImage);
            return list;
        }
    }

    @Override
    public List<Product> getPaginatedProducts(Integer pageSize, Integer pageNumber) {
        return productDao.getPaginatedProducts(pageSize,pageNumber);
    }

    @Override
    public List<Product> getPaginatedProductsByCategory(Long categoryId, Integer pageSize, Integer pageNumber) {
        Category category = categoryService.findById(categoryId);
        List<Product> products = category.getProducts();
        Integer lambda = pageSize*(pageNumber-1);
        if(lambda>products.size()-1){
            return null;
        }
        if(lambda+pageSize>products.size()-1){
            return products.subList(lambda,products.size());
        }
        return products.subList(lambda,lambda+pageSize);
    }

}
