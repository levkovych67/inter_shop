package com.shop.controller;


import com.shop.entity.User;
import com.shop.entity.UserOrder;
import com.shop.service.UserOrderService;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserOrderService userOrderService;

    @RequestMapping("/users")
    public String usersPanel(){
        return "admin/users";
    }

    @RequestMapping("/users.json")
    public @ResponseBody
    List<User> getUsers(){

        return userService.getUsers();
    }

    @RequestMapping("/orders")
    public String orderPanel(){
        return "admin/orders";
    }

    @RequestMapping(value = "/enable-disable-user/{id}", method = RequestMethod.GET)
    public String disableUser(@PathVariable Long id) {
        userService.disableOrEnable(id);
        return "redirect:/admin/users";
    }

    @RequestMapping("/orders.json")
    public @ResponseBody
    List<UserOrder> getOrders(){
        return userOrderService.findAll();
    }

    @RequestMapping(value = "/confirm-order/{id}",method = RequestMethod.PUT)
    public @ResponseBody
    ResponseEntity<UserOrder> confirmUserOrder(@PathVariable("id") Long userOrderId){
        userOrderService.confirmOrder(userOrderId);
        return new ResponseEntity<UserOrder>(HttpStatus.OK);
    }

    @RequestMapping("/categories")
    public String categories(){
        return "admin/categories";
    }


}
