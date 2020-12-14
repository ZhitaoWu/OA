package com.wzt.layui.service;

import com.wzt.layui.vo.DataVO;
import com.wzt.layui.vo.ProductVO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @User:Tao
 * @date:2020/12/9
 */
@SpringBootTest
class ProductServiceTest {

    @Autowired
    private ProductService service;

    @Test
    void findData() {
        // 一页十条数据
        DataVO dataVO = service.findData(1,10);
        //int i = 0;
    }

    @Test
    void getBarVO() {
        service.getBarVO();
        //int i = 0;
    }
}