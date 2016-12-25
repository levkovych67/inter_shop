package com.shop.controller;


import com.shop.entity.User;
import com.shop.service.UserService;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
@RequestMapping("/user/")
public class UserController {


    @Autowired
    private UserService userService;

    @RequestMapping("/cart")
    public String getCart() {
        return "user/cart";
    }

    @RequestMapping("/settings")
    public String getSettings() {
        return "user/settings";
    }


    @RequestMapping(value = "/sign-in",method = RequestMethod.POST)
    public @ResponseBody User registerNewUser(@RequestBody  User user){
        userService.registerNewUser(user);
        return user;
    }

    @RequestMapping(value = "/add-to-cart/{productId}",method = RequestMethod.GET)
    public void addToCart(@PathVariable Long productId,Principal principal){
            userService.addProductToCart(productId,principal.getName());
    }


}
