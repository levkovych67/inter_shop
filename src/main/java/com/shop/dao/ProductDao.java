package com.shop.dao;


import com.shop.entity.Category;
import com.shop.entity.Product;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface ProductDao extends BaseDao<Product> {

    List<Product> getPaginatedProductsByPrice(Double startPrice, Double endPrice,Integer pageSize,Integer pageNumber);


    List<Product> getPaginatedProductsByTitle(String title,Integer pageSize,Integer pageNumber);

    void deleteById(Long id);

    List<Product> getPaginatedProducts(Integer pageSize,Integer pageNumber);


}
