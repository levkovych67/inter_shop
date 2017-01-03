package com.shop.service.impl;

import com.shop.dao.UserOrderDao;
import com.shop.entity.Message;
import com.shop.entity.User;
import com.shop.entity.UserOrder;
import com.shop.service.MessageService;
import com.shop.service.UserOrderService;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.Calendar;

@Service
public class UserOrderServiceImpl extends BaseServiceImpl<UserOrder> implements UserOrderService {


    @Autowired
    private UserOrderDao userOrderDao;

    @Autowired
    private UserService userService;

    @Autowired
    private MessageService messageService;

    @Override
    public UserOrder confirmOrder(Long userOrderId) {
        UserOrder userOrder = userOrderDao.findById(userOrderId);
        userOrder.setStatus(Boolean.TRUE);
        User user = userService.findUserByEmail(userOrder.getUser().getEmail());
        Message message = new Message();
        String messageContent = "Dear " + user.getFirstName() + " " + user.getLastName() + ", your order for the purchase of " + userOrder.getProducts().toString().replace("[", "").replace("]", "")
                + " made " + userOrder.getDate() + " was accepted. Our manager will call you to discuss details.";
        message.setDate(new Date(Calendar.getInstance().getTime().getTime()));
        message.setMessage(messageContent);
        message.setUser(user);
        messageService.create(message);
        userOrderDao.update(userOrder);
        return userOrder;
    }
}
