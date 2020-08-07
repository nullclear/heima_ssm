package com.yxy.ssm.controller;

import com.yxy.ssm.domain.Product;
import com.yxy.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.List;

/**
 * Created by Nuclear on 2020/3/17
 */
@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private IProductService productService;

    //添加产品
    @RequestMapping("/save.do")
    public String saveProduct(Product product) throws Exception {
        productService.save(product);
        return "redirect:findAll.do";
    }
    //查询全部产品
    @RequestMapping("/findAll.do")
    @RolesAllowed(value = {"ADMIN"})//这里可以省略前缀ROLE_，实际的权限可能是ROLE_ADMIN
    public ModelAndView findAll() throws Exception {
        ModelAndView mv=new ModelAndView();
        List<Product> products=productService.findAll();
        mv.addObject("productList",products);
        mv.setViewName("product-list");
        return mv;
    }

}
