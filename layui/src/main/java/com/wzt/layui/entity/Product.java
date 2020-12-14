package com.wzt.layui.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @User:Tao
 * @date:2020/12/8
 */
@TableName("product")// 提供一个表明
@Data// lombok注解 省略 getter setter toString
public class Product {
    private Integer id;         // 商品id
    private String name;        // 商品名
    private String description; // 商品描述
    private Float price;        // 商品价格
    private Integer stock;      // 销售数量
    private Integer categoryleveloneId; // 一级分类id
    private Integer categoryleveltwoId; // 二级分类id
    private Integer categorylevelthreeId; // 三级级分类id
    private String fileName;    // 商品图片名字

}
