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
                .filter(category -> !category.getSubcategories().isEmpty())
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
        if(categoryDto.getParentCategoryId()==null){
            category.setTitle(categoryDto.getTitle());
            categoryDao.create(category);
        } else {
            Category parentCategory = categoryDao.findById(categoryDto.getParentCategoryId());
            List<Category> parentsSubcategories = parentCategory.getSubcategories();
            category.setTitle(categoryDto.getTitle());
            parentsSubcategories.add(category);
            parentCategory.setSubcategories(parentsSubcategories);
            categoryDao.update(parentCategory);
        }

    }


}
