package com.shop.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/")
public class UserController {


    @RequestMapping("/cart")
    public String getCart() {
        return "user/cart";
    }

    @RequestMapping("/settings")
    public String getSettings() {
        return "user/settings";
    }

}
