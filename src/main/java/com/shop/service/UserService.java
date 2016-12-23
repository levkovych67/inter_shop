package com.shop.service;

import com.shop.dao.UserDao;
import com.shop.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService extends BaseService<User> {

    User findUserByEmail(String email);

    void save(User user);

    List<User> getUsers();



}