package com.shop.service;

import com.shop.dto.ProductDto;
import com.shop.entity.Image;
import com.shop.entity.Product;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface ProductService extends BaseService<Product> {

    List<Product>getPaginatedProductsByTitle(String title,Integer pageSize,Integer pageNumber);

    List<Product> getPaginatedProductsByPrice(Double startPrice,Double endPrice,Integer pageSize,Integer pageNumber);

    void deleteById(Long id);

    Product saveProductDto(ProductDto productDto, MultipartFile image) throws IOException;

    Product saveProduct(Product product,Long categoryId ,MultipartFile file) throws IOException;

    List<Image> transformImageToList(MultipartFile image) throws IOException;

    List<Product> getPaginatedProducts(Integer pageSize,Integer pageNumber);

    List<Product> getPaginatedProductsByCategory(Long categoryId,Integer pageSize,Integer pageNumber);
}
