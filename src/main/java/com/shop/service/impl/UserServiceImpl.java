package com.shop.service.impl;

import com.shop.dao.UserDao;
import com.shop.entity.Role;
import com.shop.entity.User;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Autowired
    private UserDao userDao;


    @Override
    public User findUserByEmail(String email) {
        return userDao.findUserByEmail(email);
    }

    @Override
    public void save(User user) {
        userDao.create(user);
    }

    @Override
    public List<User> getUsers() {
        List<User> users = userDao.findAll().stream()
                .filter(user -> user.getRole().equals(Role.USER))
                .collect(Collectors.toList());
        return users;

    }
}
