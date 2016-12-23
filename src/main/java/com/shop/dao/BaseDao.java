package com.shop.dao;

import java.util.List;

public interface BaseDao<T> {


    void create(T entity);

    List<T> findAll();

    T findById(Long id);

    void delete(T entity);

    T update(T entity);

}
