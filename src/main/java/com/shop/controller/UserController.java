package com.shop.controller;


import com.shop.entity.Product;
import com.shop.entity.User;
import com.shop.service.UserService;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/user/")
public class UserController {


    @Autowired
    private UserService userService;

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String getCart() {
        return "user/cart";
    }


    @RequestMapping(value = "/cart/products", method = RequestMethod.GET)
    public
    @ResponseBody
    List<Product> getCartProducts(Principal principal) {

        return userService.getProductsInCart(principal.getName());
    }

    @RequestMapping(value = "/cart/products/{productId}", method = RequestMethod.GET)
    public void deleteProductFromUserCart(@PathVariable Long productId,Principal principal) {
          userService.deleteProductFromCart(productId,principal.getName());
    }

    @RequestMapping("/settings")
    public String getSettings() {
        return "user/settings";
    }


    @RequestMapping(value = "/sign-in", method = RequestMethod.POST)
    public
    @ResponseBody
    User registerNewUser(@RequestBody User user) {
        userService.registerNewUser(user);
        return user;
    }

    @RequestMapping(value = "/add-to-cart/{productId}", method = RequestMethod.GET)
    public void addToCart(@PathVariable Long productId, Principal principal) {
        userService.addProductToCart(productId, principal.getName());
    }


}
