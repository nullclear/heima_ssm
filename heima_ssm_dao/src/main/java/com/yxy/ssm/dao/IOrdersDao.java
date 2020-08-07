package com.yxy.ssm.dao;

import com.yxy.ssm.domain.Member;
import com.yxy.ssm.domain.Orders;
import com.yxy.ssm.domain.Product;
import org.apache.ibatis.annotations.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/18
 */
@Repository(value = "ordersDao")
public interface IOrdersDao {
    //查询所有的订单
    @Select("select * from orders")
    @Results(value = {
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "orderNum", column = "orderNum"),
            @Result(property = "orderTime", column = "orderTime"),
            @Result(property = "orderStatus", column = "orderStatus"),
            @Result(property = "peopleCount", column = "peopleCount"),
            @Result(property = "payType", column = "payType"),
            @Result(property = "orderDesc", column = "orderDesc"),
            @Result(property = "product", column = "productId", javaType = Product.class, one = @One(select = "com.yxy.ssm.dao.IProductDao.findById")),
    })
    List<Orders> findAll();

    //查询订单详情
    @Select("select * from orders where id=#{ordersId} ")
    @Results(value = {
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "orderNum", column = "orderNum"),
            @Result(property = "orderTime", column = "orderTime"),
            @Result(property = "orderStatus", column = "orderStatus"),
            @Result(property = "peopleCount", column = "peopleCount"),
            @Result(property = "payType", column = "payType"),
            @Result(property = "orderDesc", column = "orderDesc"),
            @Result(property = "product", column = "productId", javaType = Product.class, one = @One(select = "com.yxy.ssm.dao.IProductDao.findById")),
            @Result(property = "member", column = "memberId", javaType = Member.class, one = @One(select = "com.yxy.ssm.dao.IMemberDao.findById")),
            @Result(property = "travellers", column = "id", javaType = java.util.List.class, many = @Many(select = "com.yxy.ssm.dao.ITravellerDao.findByOrderId"))
    })
    Orders findById(String ordersId);
}
