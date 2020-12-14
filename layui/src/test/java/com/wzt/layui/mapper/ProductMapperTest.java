package com.wzt.layui.mapper;

import com.wzt.layui.entity.Product;
import com.wzt.layui.vo.ProductBarVO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @User:Tao
 * @date:2020/12/8
 */
@SpringBootTest
class ProductMapperTest {
    @Autowired
    private ProductMapper mapper;

    @Test
    void test() {
        // queryWrapper:null 查找所有
        mapper.selectList(null).forEach(System.out::println);
    }

    @Test
    void test2() {
        List<ProductBarVO> list = mapper.findAllProductVO();
        int i = 0;
    }

}