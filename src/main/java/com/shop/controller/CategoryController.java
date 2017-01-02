package com.shop.controller;


import com.shop.dto.CategoryDto;
import com.shop.entity.Category;
import com.shop.entity.Product;
import com.shop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    public String getProductsByCategory() {
        return "index";
    }


    @RequestMapping(value = "/create-category",method = RequestMethod.POST)
    public @ResponseBody
    ResponseEntity<Category> createCategory(@RequestBody CategoryDto categoryDto){
        categoryService.createFromCategoryDto(categoryDto);
        return new ResponseEntity<Category>(HttpStatus.OK);
    }

    @RequestMapping(value = "/delete-category/{id}",method = RequestMethod.DELETE)
    public @ResponseBody
    ResponseEntity<Category> deleteCategory(@PathVariable Long id){
        categoryService.delete(categoryService.findById(id));
        return new ResponseEntity<Category>(HttpStatus.OK);
    }
}
