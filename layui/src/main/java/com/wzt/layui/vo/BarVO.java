package com.wzt.layui.vo;

import lombok.Data;

import java.util.List;

/**
 * @User:Tao
 * @date:2020/12/11
 */
// 柱状图
@Data
public class BarVO {
    private List<String> names;
    private List<Integer> values;
}
