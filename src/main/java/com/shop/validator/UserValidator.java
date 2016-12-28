package com.shop.validator;

import com.shop.entity.User;
import com.shop.service.UserService;
import org.hibernate.validator.internal.constraintvalidators.hv.EmailValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserValidator implements Validator {

    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        EmailValidator emailValidator = new EmailValidator();
        User user = (User) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required");


        if(!emailValidator.isValid(user.getEmail(),null)){
            errors.rejectValue("email", "not valid email");
        }
        if (userService.findUserByEmail(user.getEmail()) != null) {
            errors.rejectValue("email", "this email already registered");
        }

    }
}
