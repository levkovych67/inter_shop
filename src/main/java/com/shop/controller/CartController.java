package com.shop.controller;

import com.shop.entity.Product;
import com.shop.entity.User;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/user/")
public class CartController {

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

    @RequestMapping(value = "/cart/products/{productId}", method = RequestMethod.POST)
    public  ResponseEntity<User> deleteProductFromUserCart(@PathVariable Long productId, Principal principal) {
        userService.deleteProductFromCart(productId, principal.getName());
        return new  ResponseEntity<User>(HttpStatus.OK);
    }

    @RequestMapping(value = "/add-to-cart/{productId}", method = RequestMethod.GET)
    public ResponseEntity<User> addToCart(@PathVariable Long productId, Principal principal) {
        userService.addProductToCart(productId, principal.getName());
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @RequestMapping(value = "/confirm", method = RequestMethod.GET)
    public void confirmOrder(Principal principal) {
        userService.confirmOrder(principal.getName());
    }

}