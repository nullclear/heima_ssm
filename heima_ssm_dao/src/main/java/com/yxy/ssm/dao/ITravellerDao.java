package com.yxy.ssm.dao;

import com.yxy.ssm.domain.Traveller;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/18
 */
@Repository(value = "travellerDao")
public interface ITravellerDao {
    //根据orderId从中间表中查询旅客信息
    @Select("select * from traveller where id in (select travellerId from order_traveller where orderId=#{orderId} )")
    List<Traveller> findByOrderId(String orderId) throws Exception;
}
