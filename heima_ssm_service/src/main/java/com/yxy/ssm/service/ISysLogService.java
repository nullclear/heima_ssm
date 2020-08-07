package com.yxy.ssm.service;

import com.yxy.ssm.domain.SysLog;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/29
 */
public interface ISysLogService {
    void save(SysLog sysLog) throws Exception;

    List<SysLog> findAll() throws Exception;
}
