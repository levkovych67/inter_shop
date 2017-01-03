package com.shop.controller;


import com.shop.entity.Message;
import com.shop.entity.User;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;
import java.util.List;

@Controller
@PreAuthorize("hasRole('ROLE_USER')")
public class MessageContoroller {

    @Autowired
    private UserService userService;

    @RequestMapping("/user/messages")
    public String getMessagesPage (){
        return "user/messages";
    }


    @RequestMapping("/user/message-list")
    public @ResponseBody
    List<Message> getMessages(Principal principal){
        return userService.findUserByEmail(principal.getName()).getMessages();
    }
}
