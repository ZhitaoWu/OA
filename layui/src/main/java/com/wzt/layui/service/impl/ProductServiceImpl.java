package com.wzt.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.wzt.layui.entity.Product;
import com.wzt.layui.entity.ProductCategory;
import com.wzt.layui.mapper.ProductCategoryMapper;
import com.wzt.layui.mapper.ProductMapper;
import com.wzt.layui.service.ProductService;
import com.wzt.layui.vo.*;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @User:Tao
 * @date:2020/12/9
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private ProductCategoryMapper productCategoryMapper;

    @Override
    public DataVO<ProductVO> findData(Integer page, Integer limit) {
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMsg("");
        // dataVO.setCount(productMapper.selectCount(null));

        // 设置分页
        IPage<Product> iPage = new Page<>(page,limit);
        IPage<Product> result = productMapper.selectPage(iPage,null);
        dataVO.setCount(result.getTotal());

        List<Product> productList = result.getRecords();
        List<ProductVO> productVOList = new ArrayList<>();
        for (Product product : productList) {
            ProductVO productVO = new ProductVO();
            // 前值赋予后值
            BeanUtils.copyProperties(product,productVO);


            // 先判断是否存在再取值
            // 一级分类
            /**
             * QueryWrapper: Entity 对象封装操作类
             * eq: ==
             * nq: !=
             */
            QueryWrapper queryWrapper = new QueryWrapper();
            queryWrapper.eq("id",product.getCategoryleveloneId());
            ProductCategory productCategory = productCategoryMapper.selectOne(queryWrapper);
            if (productCategory !=  null) {
                productVO.setCategorylevelone(productCategory.getName());
            }

            // 二级分类
            queryWrapper = new QueryWrapper();
            queryWrapper.eq("id",product.getCategoryleveltwoId());
            productCategory = productCategoryMapper.selectOne(queryWrapper);
            if (productCategory !=  null) {
                productVO.setCategoryleveltwo(productCategory.getName());
            }

            // 三级分类
            queryWrapper = new QueryWrapper();
            queryWrapper.eq("id",product.getCategorylevelthreeId());
            productCategory = productCategoryMapper.selectOne(queryWrapper);
            if (productCategory !=  null) {
                productVO.setCategorylevelthree(productCategory.getName());
            }

            productVOList.add(productVO);
        }
        dataVO.setData(productVOList);
        return dataVO;
    }

    @Override
    public BarVO getBarVO() {
        List<ProductBarVO> list = productMapper.findAllProductVO();
        List<String> names = new ArrayList<>();
        List<Integer> values = new ArrayList<>();

        // 遍历ProductBarVO集合中的值，分别储存在对应的集合中
        for (ProductBarVO productBarVO : list) {
            //System.out.println(productBarVO.getName());
            names.add(productBarVO.getName());
            values.add(productBarVO.getAccount());
        }

        BarVO barVO = new BarVO();
        barVO.setNames(names);
        barVO.setValues(values);

        return barVO;
    }

    // 使用了jdk新特性 stream
    @Override
    public List<PieVO> getPieVO() {
        List<ProductBarVO> list = productMapper.findAllProductVO();
        List<PieVO> pieVOList = list.stream()
                .map(e -> new PieVO(
                        e.getAccount(),
                        e.getName()
                )).collect(Collectors.toList());

        return pieVOList;
    }
}
