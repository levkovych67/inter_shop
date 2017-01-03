package com.shop.controller;


import com.shop.entity.Message;
import com.shop.entity.User;
import com.shop.service.MessageService;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@Controller
@PreAuthorize("hasRole('ROLE_USER')")
public class MessageContoroller {

    @Autowired
    private UserService userService;

    @Autowired
    private MessageService messageService;

    @RequestMapping("/user/messages")
    public String getMessagesPage (){
        return "user/messages";
    }


    @RequestMapping("/user/message-list")
    public @ResponseBody
    List<Message> getMessages(Principal principal){
        return userService.findUserByEmail(principal.getName()).getMessages();
    }

    @RequestMapping(value = "/user/set-message-read/{id}",method = RequestMethod.PUT)
    public @ResponseBody
    ResponseEntity<Message> setMessageRead(Principal principal, @PathVariable Long id){
        messageService.setMessageRead(principal.getName(),id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @RequestMapping(value = "/user/delete-message/{id}",method = RequestMethod.DELETE)
    public @ResponseBody
    ResponseEntity<Message> delete(Principal principal, @PathVariable Long id){
        messageService.deleteMessage(principal.getName(),id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
