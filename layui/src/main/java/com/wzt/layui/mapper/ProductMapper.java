package com.wzt.layui.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.wzt.layui.entity.Product;
import com.wzt.layui.vo.ProductBarVO;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @User:Tao
 * @date:2020/12/8
 *
 */
public interface ProductMapper extends BaseMapper<Product> {
    /**
     * 查询销量
     * @return
     */
    @Select("select p.name, sum(quantity) account from product p, order_detail od where p.id = od.product_id group by product_id")
    public List<ProductBarVO> findAllProductVO();

}
