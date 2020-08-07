package com.yxy.ssm.service;

import com.yxy.ssm.domain.Permission;
import com.yxy.ssm.domain.Role;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/27
 */
public interface IRoleService {

    List<Role> findAll() throws Exception;

    void save(Role role) throws Exception;

    Role findById(String roleId) throws Exception;

    List<Permission> findOtherPermission(String roleId) throws Exception;

    void addPermissionToRole(String roleId, String[] permissionIds) throws Exception;
}
