package com.shop.dao.impl;


import com.shop.dao.BaseDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.annotations.Proxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.GenericTypeResolver;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.lang.reflect.ParameterizedType;
import java.util.List;


@Repository
@Transactional
public abstract class BaseDaoImpl<T> implements BaseDao<T> {


    @Autowired
    private SessionFactory sessionFactory;

    private Class entityType;

    @SuppressWarnings("unchecked")
    public BaseDaoImpl() {
        this.entityType = ((Class) ((ParameterizedType) getClass()
                .getGenericSuperclass()).getActualTypeArguments()[0]);
    }

    @Override
    public void create(T entity) {
        Session session = sessionFactory.getCurrentSession();
        session.save(entity);
    }

    @Override
    public List<T> findAll() {
        Session session = sessionFactory.getCurrentSession();
      return   session.createCriteria(entityType).list();


    }

    @Override
    public T findById(Long id) {
        Session session = sessionFactory.getCurrentSession();
        return (T) session.get(entityType,id);
    }

    @Override
    public void delete(T entity) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(entity);
    }

    @Override
    public T update(T entity) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(entity);
        return entity;
    }
}

