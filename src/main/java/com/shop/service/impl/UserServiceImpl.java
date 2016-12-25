package com.shop.service.impl;

import com.shop.dao.UserDao;
import com.shop.entity.Product;
import com.shop.entity.Role;
import com.shop.entity.User;
import com.shop.service.ProductService;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Autowired
    private UserDao userDao;


    @Autowired
    private ProductService productService;

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

    @Override
    public void disableOrEnable(Long id) {
        User user = userDao.findById(id);
        if (user.getActive()) {
            user.setActive(Boolean.FALSE);
            userDao.update(user);
        } else {
            user.setActive(Boolean.TRUE);
            userDao.update(user);
        }
    }

    @Override
    public void registerNewUser(User user) {
        user.setRole(Role.USER);
        user.setActive(Boolean.TRUE);
        userDao.create(user);
    }

    @Override
    public User addProductToCart(Long productId, String userEmail) {
        User user =userDao.findUserByEmail(userEmail);
        List<Product> usersProducts = user.getProducts();
        usersProducts.add(productService.findById(productId));
        user.setProducts(usersProducts);
        userDao.update(user);
        return user;
    }

    @Override
    public List<Product> getProductsInCart(String userEmail) {
       return userDao.findUserByEmail(userEmail).getProducts();
    }

    @Override
    public List<Product> deleteProductFromCart(Long productId, String userEmail) {
        User user = userDao.findUserByEmail(userEmail);
        List<Product> usersProducts = user.getProducts();
        usersProducts.contains(productService.findById(productId));
        usersProducts.remove(productService.findById(productId));
        user.setProducts(usersProducts);
        userDao.update(user);
        return usersProducts;
    }


}
