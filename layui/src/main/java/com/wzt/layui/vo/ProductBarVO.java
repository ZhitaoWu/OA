package com.wzt.layui.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

/**
 * @User:Tao
 * @date:2020/12/11
 */
@Data
public class ProductBarVO {
    private String name;
    @JsonProperty("value")
    private Integer account;
}
