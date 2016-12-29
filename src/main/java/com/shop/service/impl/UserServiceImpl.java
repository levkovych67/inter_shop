package com.shop.service.impl;

import com.shop.dao.UserDao;
import com.shop.entity.Product;
import com.shop.entity.Role;
import com.shop.entity.User;
import com.shop.entity.UserOrder;
import com.shop.service.ProductService;
import com.shop.service.UserOrderService;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private UserOrderService userOrderService;

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
    public void registerNewAdmin(User admin) {
        admin.setRole(Role.ADMIN);
        admin.setActive(Boolean.TRUE);
        userDao.create(admin);
    }

    @Override
    public User addProductToCart(Long productId, String userEmail) {
        User user = userDao.findUserByEmail(userEmail);
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

    @Override
    public void confirmOrder(String userEmail) {
        User user = userDao.findUserByEmail(userEmail);
        UserOrder userOrder = new UserOrder();
        userOrder.setDate(new Date(Calendar.getInstance().getTime().getTime()));
        userOrder.setProducts(user.getProducts());
        userOrder.setUser(user);
        Double total = 0d;
        for (Product p : user.getProducts()) {
            total = total + p.getPrice();
        }
        userOrder.setTotalPrice(total);
        userOrder.setStatus(Boolean.FALSE);
        userOrderService.create(userOrder);
        user.setProducts(new ArrayList<>());
        userDao.update(user);
    }

    @Override
    public User updateUser(User user, String userEmail) {
        if (Objects.equals(userEmail, user.getEmail())) {
            User deprecated = userDao.findUserByEmail(user.getEmail());
            user.setProducts(deprecated.getProducts());
            userDao.update(user);
            return deprecated;
        } else return findUserByEmail(userEmail);

    }


}
