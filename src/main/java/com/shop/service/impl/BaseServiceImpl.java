package com.shop.service.impl;

import com.shop.dao.BaseDao;
import com.shop.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class BaseServiceImpl<T> implements BaseService<T> {


    @Autowired
    private BaseDao<T> baseDao;

    @Override
    public void create(T entity) {
        baseDao.create(entity);
    }

    @Override
    public T update(T entity) {
        return baseDao.update(entity);
    }

    @Override
    public T findById(Long id) {
        return baseDao.findById(id);

    }

    @Override
    public void delete(T entity) {
        baseDao.delete(entity);
    }

    @Override
    public List<T> findAll() {
        return baseDao.findAll();
    }

}
