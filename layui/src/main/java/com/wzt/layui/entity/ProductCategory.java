package com.wzt.layui.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @User:Tao
 * @date:2020/12/9
 */
// 商品分级
@TableName("product_category")
@Data
public class ProductCategory {
    private Integer id;     // 级联id
    private String name;    // 级联名称
    private Integer parentId;   // 父级id
    private Integer type;       // 类型id
}
