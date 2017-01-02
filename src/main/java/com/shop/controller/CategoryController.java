package com.shop.controller;


import com.shop.dto.CategoryDto;
import com.shop.entity.Category;
import com.shop.entity.Product;
import com.shop.service.CategoryService;
import com.shop.validator.CategoryValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@Controller
public class CategoryController {

    @Autowired
    private CategoryValidator categoryValidator;
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

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/create-category",method = RequestMethod.POST)
    public @ResponseBody
    ResponseEntity createCategory(@RequestBody CategoryDto categoryDto, BindingResult bindingResult){
       Category category = categoryService.createFromCategoryDto(categoryDto);
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body(bindingResult.getAllErrors());
        } else {
            categoryService.create(category);
            return new ResponseEntity<Category>(HttpStatus.OK);
        }

    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/delete-category/{id}",method = RequestMethod.DELETE)
    public @ResponseBody
    ResponseEntity<Category> deleteCategory(@PathVariable Long id){
        categoryService.delete(categoryService.findById(id));
        return new ResponseEntity<Category>(HttpStatus.OK);
    }
}
