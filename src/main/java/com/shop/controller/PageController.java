package com.shop.controller;


import com.shop.entity.Product;
import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class PageController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/{pageSize}/{pageNumber}")
    public @ResponseBody
    List<Product> getProductsPerPage(@PathVariable Integer pageSize, @PathVariable Integer pageNumber){
        return productService.getPaginatedProducts(pageSize,pageNumber);
    }

    @RequestMapping("/category/{id}/{pageSize}/{pageNumber}")
    public @ResponseBody
    List<Product> getProductsPaginatedByCategory(@PathVariable Long id,@PathVariable Integer pageSize, @PathVariable Integer pageNumber){
        return productService.getPaginatedProductsByCategory(id,pageSize,pageNumber);
    }


    @RequestMapping(value = "product/get-by-price/{startPrice}/{endPrice}/{pageSize}/{pageNumber}", method = RequestMethod.GET)
    public @ResponseBody  List<Product> getByPrice(@PathVariable Double startPrice, @PathVariable Double endPrice, @PathVariable Integer pageSize, @PathVariable Integer pageNumber) {
        return productService.getPaginatedProductsByPrice(startPrice,endPrice,pageSize,pageNumber);
    }

    @RequestMapping("product/search/{title}/{pageSize}/{pageNumber}")
    public  @ResponseBody  List<Product> searchProductsByTitle(@PathVariable String title,@PathVariable Integer pageSize,@PathVariable Integer pageNumber) {
        return productService.getPaginatedProductsByTitle(title,pageSize,pageNumber);

    }

}
