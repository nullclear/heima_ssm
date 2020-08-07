package com.yxy.ssm.dao;

import com.yxy.ssm.domain.Permission;
import com.yxy.ssm.domain.Role;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/24
 */
@Repository(value = "roleDao")
public interface IRoleDao {

    @Select("select * from role where id in (select roleId from users_role where userId=#{userId} )")
    @Results(
            value = {
                    @Result(id = true, property = "id", column = "id"),
                    @Result(property = "roleName", column = "roleName"),
                    @Result(property = "roleDesc", column = "roleDesc"),
                    @Result(property = "permissions", column = "id", javaType = java.util.List.class, many = @Many(select = "com.yxy.ssm.dao.IPermissionDao.findPermissionByRoleId")),
            }
    )
    List<Role> findRoleByUserId(String userId) throws Exception;

    @Select("select * from role")
    List<Role> findAll() throws Exception;

    @Insert("insert into role(roleName,roleDesc) values(#{roleName} ,#{roleDesc} ) ")
    void save(Role role) throws Exception;

    @Select("select * from role where id=#{roleId} ")
    Role findById(String roleId) throws Exception;

    @Select("select * from permission where id not in(select permissionId from role_permission where roleId=#{roleId} )")
    List<Permission> findOtherPermission(String roleId) throws Exception;

    @Insert("insert into role_permission(roleId,permissionId) values(#{roleId} ,#{permissionId} ) ")
    void addPermissionToRole(@Param("roleId") String roleId, @Param("permissionId") String permissionId) throws Exception;
}
