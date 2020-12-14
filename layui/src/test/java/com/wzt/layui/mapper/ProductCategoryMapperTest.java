package com.wzt.layui.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.wzt.layui.entity.ProductCategory;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @User:Tao
 * @date:2020/12/9
 */
@SpringBootTest
class ProductCategoryMapperTest {

    @Autowired
    private ProductCategoryMapper mapper;

    /**
     * 测试根据id查找名字
     */
    @Test
    void test() {
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("id",669);
        System.out.println(mapper.selectOne(wrapper));
    }


}