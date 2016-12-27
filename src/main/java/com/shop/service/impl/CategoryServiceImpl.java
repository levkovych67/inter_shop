package com.shop.service.impl;

import com.shop.dao.CategoryDao;
import com.shop.dto.CategoryDto;
import com.shop.entity.Category;
import com.shop.entity.Product;
import com.shop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;


@Service
public class CategoryServiceImpl extends BaseServiceImpl<Category> implements CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    @Override
    public List<Category> getCategoryTree() {
        List<Category> categories = categoryDao.findAll();
        List<Category> roots = categories.stream()
                .filter(category -> category.getParentCategory()==null)
                .collect(Collectors.toList());
        return roots;
    }

    @Override
    public List<Product> getProductsByCategory(Long id) {
        Category category = categoryDao.findById(id);
        return   category.getProducts();
    }

    @Override
    public void createFromCategoryDto(CategoryDto categoryDto) {
        Category category = new Category();
        category.setTitle(categoryDto.getTitle());
        if(categoryDto.getParentCategoryId()!=null) {
            Category parentCategory = categoryDao.findById(categoryDto.getParentCategoryId());
            category.setParentCategory(parentCategory);
        }
        categoryDao.create(category);
    }


}
