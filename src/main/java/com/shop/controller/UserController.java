package com.shop.controller;



import com.shop.entity.User;
import com.shop.service.UserService;
import com.shop.validator.UserValidator;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


@Controller
@RequestMapping("/user/")
public class UserController {


    @Autowired
    private UserService userService;


    @Autowired
    private UserValidator userValidator;

    @RequestMapping("/settings")
    public String getSettings() {
        return "user/settings";
    }


    @RequestMapping(value = "/sign-in", method = RequestMethod.POST)
    public
    @ResponseBody
    ResponseEntity registerNewUser(@RequestBody @Valid User user, BindingResult bindingResult) {
        userValidator.validate(user,bindingResult);
        if (bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body(bindingResult.getAllErrors());
        }
        userService.registerNewUser(user);
        return ResponseEntity.ok().build();
    }


}
