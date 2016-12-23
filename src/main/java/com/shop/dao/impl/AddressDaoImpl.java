package com.shop.dao.impl;

import com.shop.dao.AddressDao;
import com.shop.entity.Address;
import com.shop.entity.Product;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class AddressDaoImpl extends BaseDaoImpl<Address> implements AddressDao {
}
