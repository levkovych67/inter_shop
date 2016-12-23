package com.shop.service;

import com.shop.dto.ProductDto;
import com.shop.entity.Image;
import com.shop.entity.Product;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface ProductService extends BaseService<Product> {

    List<Product> getProductByTitle(String title);

    List<Product> getProductsByPrice(Double startPrice,Double endPrice);

    void deleteById(Long id);

    Product saveProductDto(ProductDto productDto, MultipartFile image) throws IOException;

    Product saveProduct(Product product,Long categoryId ,MultipartFile file) throws IOException;

    public List<Image> transformImageToList(MultipartFile image) throws IOException;

}
