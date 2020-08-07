package com.yxy.ssm.service.impl;

import com.yxy.ssm.dao.ISysLogDao;
import com.yxy.ssm.domain.SysLog;
import com.yxy.ssm.service.ISysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/29
 */
@Service(value = "sysLogService")
public class SysLogServiceImpl implements ISysLogService {

    @Autowired
    private ISysLogDao sysLogDao;

    @Override
    public void save(SysLog sysLog) throws Exception {
        sysLogDao.save(sysLog);
    }

    @Override
    public List<SysLog> findAll() throws Exception {
        return sysLogDao.findAll();
    }
}
