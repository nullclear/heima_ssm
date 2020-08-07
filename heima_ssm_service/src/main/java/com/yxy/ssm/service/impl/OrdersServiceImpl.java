package com.yxy.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.yxy.ssm.dao.IOrdersDao;
import com.yxy.ssm.domain.Orders;
import com.yxy.ssm.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/18
 */
@Service
@Transactional
public class OrdersServiceImpl implements IOrdersService {

    @Autowired
    private IOrdersDao ordersDao;

    @Override
    public List<Orders> findAll(int page, int size) throws Exception {
        //参数pageNum是指定开始的页码,pagesSize表示一页显示的数量
        PageHelper.startPage(page, size);
        return ordersDao.findAll();
    }

    @Override
    public Orders findById(String ordersId) throws Exception {
        return ordersDao.findById(ordersId);
    }
}
