package com.shop.dao.impl;

import com.shop.dao.UserDao;
import com.shop.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<User> getActiveUsers() {
        return null;
    }

    @Override
    public User findUserByEmail(String email) {
        Session session = sessionFactory.getCurrentSession();
        return (User) session.createQuery("from User where email ='" + email+"'" ).uniqueResult();
    }
}
