package com.yxy.ssm.service;

import com.yxy.ssm.domain.Orders;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/18
 */
public interface IOrdersService {
    List<Orders> findAll(int page, int size) throws Exception;

    Orders findById(String ordersId) throws Exception;
}
