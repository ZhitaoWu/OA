package com.wzt.layui.vo;

import lombok.Data;

import java.util.List;

/**
 * @User:Tao
 * @date:2020/12/9
 */
@Data
public class DataVO<T> {
    private Integer code;
    private String msg;
    private Long count;
    private List<T> data;
}
