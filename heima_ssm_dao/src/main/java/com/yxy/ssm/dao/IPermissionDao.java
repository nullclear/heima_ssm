package com.yxy.ssm.dao;

import com.yxy.ssm.domain.Permission;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/27
 */
@Repository(value = "permissionDao")
public interface IPermissionDao {
    //根据角色id查询权限
    @Select("select * from permission where id in (select  permissionID from role_permission where roleId=#{id} )")
    List<Permission> findPermissionByRoleId(String id) throws Exception;

    @Select("select * from permission")
    List<Permission> findAll() throws Exception;

    @Insert("insert into permission(permissionName,url) values(#{permissionName} ,#{url} ) ")
    void save(Permission permission) throws Exception;
}
