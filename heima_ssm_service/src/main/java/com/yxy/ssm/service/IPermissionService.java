package com.yxy.ssm.service;

import com.yxy.ssm.domain.Permission;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/27
 */
public interface IPermissionService {

    List<Permission> findAll() throws Exception;

    void save(Permission permission) throws Exception;
}
