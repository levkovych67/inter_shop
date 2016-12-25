package com.shop.controller;


import com.shop.dao.ProductDao;
import com.shop.entity.Product;
import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class PageController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/all-paginated/{pageSize}/{pageNumber}")
    public @ResponseBody
    List<Product> getProductsPerPage(@PathVariable Integer pageSize, @PathVariable Integer pageNumber){
        return productService.getPaginatedProducts(pageSize,pageNumber);
    }
}
