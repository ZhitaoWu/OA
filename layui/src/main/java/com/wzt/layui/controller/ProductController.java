package com.wzt.layui.controller;

import com.wzt.layui.mapper.ProductMapper;
import com.wzt.layui.service.ProductService;
import com.wzt.layui.vo.BarVO;
import com.wzt.layui.vo.DataVO;
import com.wzt.layui.vo.PieVO;
import com.wzt.layui.vo.ProductBarVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @User:Tao
 * @date:2020/12/9
 */
//@RestController// 直接返回当前结果
@Controller
public class ProductController {
    @Autowired
    private ProductService service;

    @Autowired
    private ProductMapper productMapper;

    // 返回json
    @RequestMapping("/list")
    @ResponseBody
    public DataVO list(Integer page, Integer limit) {
        return service.findData(page, limit);
    }

    // 返回视图
    @GetMapping("/{url}")
    public String redirect(@PathVariable("url") String url) {
        return url;
    }

    @RequestMapping("/barVO")
    @ResponseBody
    public BarVO getBarVO() {
        return service.getBarVO();
    }


    // @RequestMapping("/pieVO")
    // @ResponseBody
    // public List<PieVO> getPieVO() {
    //     return service.getPieVO();
    // }

    @RequestMapping("/pieVO")
    @ResponseBody
    public List<ProductBarVO> getPieVO() {
        return productMapper.findAllProductVO();
    }


}
