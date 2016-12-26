package com.shop.service.impl;

import com.shop.dao.UserOrderDao;
import com.shop.entity.UserOrder;
import com.shop.service.UserOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserOrderServiceImpl extends BaseServiceImpl<UserOrder> implements UserOrderService {


    @Autowired
    private UserOrderDao userOrderDao;

    @Override
    public UserOrder confirmOrder(Long userOrderId) {
        UserOrder userOrder =userOrderDao.findById(userOrderId);
        userOrder.setStatus(Boolean.TRUE);
        userOrderDao.update(userOrder);
        return userOrder;
    }
}
