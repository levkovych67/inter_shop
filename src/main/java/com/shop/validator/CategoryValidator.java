package com.shop.validator;

import com.shop.entity.Category;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class CategoryValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
       return Category.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {

    }
}
