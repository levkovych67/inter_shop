package com.shop.controller;


import com.shop.entity.Category;
import com.shop.entity.Product;
import com.shop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/categories")
    public
    @ResponseBody
    List<Category> getCategoriesTree() {
        return categoryService.getCategoryTree();
    }


    @RequestMapping("/category/{id}")
    public String getProductsByCategory(Model model, @PathVariable Long id) {
        List<Product> products = categoryService.getProductsByCategory(id);
        model.addAttribute("products", products);
        return "index";
    }
}
