package com.shop.dao;


import com.shop.entity.Category;
import com.shop.entity.Product;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface ProductDao extends BaseDao<Product> {

    List<Product> getProductsWithPriceFromTo(Double startPrice, Double endPrice,Integer pageSize,Integer pageNumber);


    List<Product> getProductsByTitle(String title);

    void deleteById(Long id);

    List<Product> getPaginatedProducts(Integer pageSize,Integer pageNumber);


}
