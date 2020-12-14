package com.wzt.layui.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @User:Tao
 * @date:2020/12/14
 */
@TableName("order_detail")
@Data
public class OrderDetail {
    private Integer id;
    private Integer orderId;
    private Integer productId;
    private Integer quantity;
    private Integer cost;

}
