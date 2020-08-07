package com.yxy.ssm.dao;

import com.yxy.ssm.domain.Product;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/17
 */
@Repository(value = "productDao")
public interface IProductDao {

    //查询所有商品信息
    @Select("select * from product")
    List<Product> findAll() throws Exception;

    //添加商品信息
    @Insert("insert into product(productNum,productName,cityName,departureTime,productPrice,productDesc,productStatus) values(#{productNum},#{productName},#{cityName},#{departureTime},#{productPrice},#{productDesc},#{productStatus})")
    void save(Product product);

    //根据id查询商品
    @Select("select * from product where id=#{id} ")
    Product findById(String id) throws Exception;

}
