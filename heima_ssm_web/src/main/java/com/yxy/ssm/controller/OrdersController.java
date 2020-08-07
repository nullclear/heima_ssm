package com.yxy.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.yxy.ssm.domain.Orders;
import com.yxy.ssm.service.IOrdersService;
import org.apache.ibatis.plugin.Signature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Nuclear on 2020/3/18
 */
@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Autowired
    private IOrdersService ordersService;

    //查询全部订单,未分页
    /*@RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        List<Orders> ordersList=ordersService.findAll();
        ModelAndView mv=new ModelAndView();
        mv.addObject("ordersList",ordersList);
        mv.setViewName("orders-list");
        return mv;
    }*/

    //查询全部订单,分页
    @RequestMapping("/findAll.do")
    @Secured("ROLE_ADMIN")//这里的名称必须写全,一点都不能省略
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "4")Integer size) throws Exception {
        List<Orders> ordersList=ordersService.findAll(page,size);
        //pageInfo就是一个分页的bean
        PageInfo<Orders> pageInfo=new PageInfo<>(ordersList);
        ModelAndView mv=new ModelAndView();
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("orders-page-list");
        return mv;
    }

    //查询订单详情
    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name = "id",required = true,defaultValue = "1")String ordersId) throws Exception {
        Orders orders=ordersService.findById(ordersId);
        ModelAndView mv=new ModelAndView();
        mv.addObject("orders",orders);
        mv.setViewName("orders-show");
        return mv;
    }
}
