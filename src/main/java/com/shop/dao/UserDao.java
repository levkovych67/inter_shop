package com.shop.dao;

import com.shop.entity.User;


import java.util.List;

public interface UserDao   extends BaseDao<User> {

    List<User> getActiveUsers();

    User findUserByEmail(String email);


}
