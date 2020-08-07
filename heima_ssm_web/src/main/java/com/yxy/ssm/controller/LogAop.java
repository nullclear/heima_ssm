package com.yxy.ssm.controller;

import com.yxy.ssm.domain.SysLog;
import com.yxy.ssm.service.ISysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Date;

/**
 * Created by Nuclear on 2020/3/28
 */
@Component
@Aspect
public class LogAop {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private ISysLogService sysLogService;

    private Date visitTime;//开始时间
    private Class clazz;//访问的类
    private Method method;//访问的方法

    //前置通知 主要是获取开始时间,执行的类是哪一个,执行的是哪一个方法
    @Before("execution(* com.yxy.ssm.controller.*.*(..))")
    public void doBefore(JoinPoint jp) throws NoSuchMethodException {
        visitTime=new Date();
        clazz=jp.getTarget().getClass();//具体访问的类对象
        String methodName=jp.getSignature().getName();//获取访问的方法的名称
        Object[] args = jp.getArgs();//获取你访问的方法的参数,是一个object数组
        if (args == null||args.length==0) {
            method=clazz.getMethod(methodName); //只能获取无参数的方法
        }else {
            Class[] classArgs=new Class[args.length];
            for (int i = 0; i < args.length; i++) {
                classArgs[i]=args[i].getClass();
            }
            method=clazz.getMethod(methodName,classArgs);
        }
    }

    //后置通知
    @After("execution(* com.yxy.ssm.controller.*.*(..))")
    public void doAfter(JoinPoint jp) throws Exception {
        Long time=(new Date()).getTime()-visitTime.getTime();
        String url="";
        //获取url
        if (clazz != null&&method!=null&&clazz!= LogAop.class&&clazz!=SysLogController.class) {
            //1.获取类上的@RequestMapping
            RequestMapping classAnnotation = (RequestMapping) clazz.getAnnotation(RequestMapping.class);
            if (classAnnotation!=null){
                String[] classValue = classAnnotation.value();
                //2.获取方法上的@RequestMapping
                RequestMapping methodAnnotation = method.getAnnotation(RequestMapping.class);
                if (methodAnnotation != null) {
                    String[] methodValue = methodAnnotation.value();
                    url=classValue[0]+methodValue[0];

                    //获取访问的ip地址
                    String ip = request.getRemoteAddr();

                    //获取当前操作的用户
                    SecurityContext context= SecurityContextHolder.getContext();//从上下文从获取当前登录的用户
                    User user = (User) context.getAuthentication().getPrincipal();
                    String username = user.getUsername();

                    SysLog sysLog=new SysLog();
                    sysLog.setExecutionTime(time);
                    sysLog.setIp(ip);
                    sysLog.setMethod("[类名] "+clazz.getName()+"[方法名] "+method.getName());
                    sysLog.setUrl(url);
                    sysLog.setUsername(username);
                    sysLog.setVisitTime(visitTime);

                    //调用Service完成数据库操作
                    sysLogService.save(sysLog);
                }
            }
        }
    }
}
