package com.shop.validator;

import com.shop.entity.Product;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class ProductValidator implements Validator {

    @Override
    public boolean supports(Class<?> aClass) {
        return Product.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {

        Product product = (Product) o;

        if (product.getTitle().isEmpty() || product.getTitle() == null) {
            errors.rejectValue("title", "product.title", "Product title cant be empty");
        }
        if (product.getDescription().isEmpty() || product.getDescription() == null) {
            errors.rejectValue("description", "product.description", "Product description cant be empty");
        }
        if (product.getPrice().isNaN() || product.getPrice()<=0 || product.getPrice() == null) {
            errors.rejectValue("price", "product.price", "Product price is not valid");
        }
        if (product.getCategory()==null) {
            errors.rejectValue("category", "product.category", "Product category is not valid");
        }

    }
}
