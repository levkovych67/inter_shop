package com.shop.service;

import com.shop.dto.CategoryDto;
import com.shop.entity.Category;
import com.shop.entity.Product;

import java.util.List;
import java.util.Set;


public interface CategoryService extends BaseService<Category> {

    List<Category> getCategoryTree();


    List<Product> getProductsByCategory(Long id);

    Category createFromCategoryDto(CategoryDto categoryDto);
}
