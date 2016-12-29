package com.shop.controller;


import com.shop.entity.User;
import com.shop.service.UserService;
import com.shop.validator.UserValidator;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;


@Controller
@RequestMapping("/user")
public class UserController {


    @Autowired
    private UserService userService;


    @Autowired
    private UserValidator userValidator;

    @RequestMapping("/settings")
    public String getSettings() {
        return "user/settings";
    }


    @PreAuthorize("hasRole('ROLE_USER')")
    @RequestMapping("/get-user")
    public
    @ResponseBody
    User getUserInfo(Principal principal) {
        return userService.findUserByEmail(principal.getName());
    }

    @PreAuthorize("hasRole('ROLE_USER')")
    @RequestMapping("/update-user")
    public
    @ResponseBody
    ResponseEntity updateUser(@RequestBody User user,Principal principal) {

        userService.updateUser(user,principal.getName());
        return ResponseEntity.ok().build();
    }
}
