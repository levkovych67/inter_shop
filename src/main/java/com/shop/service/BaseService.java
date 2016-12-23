package com.shop.service;

import java.util.List;

public interface BaseService<T> {

    void create(T entity);

    T update(T entity);

    T findById(Long id);

    void delete(T entity);

    List<T> findAll();

}
