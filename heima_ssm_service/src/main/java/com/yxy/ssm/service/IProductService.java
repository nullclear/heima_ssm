package com.yxy.ssm.service;

import com.yxy.ssm.domain.Product;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/17
 */
public interface IProductService {

    List<Product> findAll() throws Exception;

    void save(Product product) throws Exception;
}
