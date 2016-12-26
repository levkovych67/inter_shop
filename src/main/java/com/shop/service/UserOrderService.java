package com.shop.service;

 import com.shop.entity.UserOrder;


public interface UserOrderService extends BaseService<UserOrder> {

 UserOrder confirmOrder(Long userOrderId);
}
