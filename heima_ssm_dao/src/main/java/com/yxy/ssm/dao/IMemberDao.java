package com.yxy.ssm.dao;

import com.yxy.ssm.domain.Member;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * Created by Nuclear on 2020/3/18
 */
@Repository(value = "memberDao")
public interface IMemberDao {
    //根据id查询member
    @Select("select * from member where id=#{id} ")
    Member findById(String id) throws Exception;
}
