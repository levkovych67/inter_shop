package com.shop.dao.impl;

import com.shop.dao.UserDao;
import com.shop.dao.UserOrderDao;
import com.shop.entity.UserOrder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository

public class UserOrderDaoImpl extends BaseDaoImpl<UserOrder> implements UserOrderDao {
}
