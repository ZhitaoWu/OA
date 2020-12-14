package com.wzt.layui.vo;

import lombok.Data;

/**
 * @User:Tao
 * @date:2020/12/9
 */
@Data
public class ProductVO {
    private Integer id;
    private String name;
    private String description;
    private Float price;
    private Integer stock;
    private String categorylevelone;
    private String categoryleveltwo;
    private String categorylevelthree;
    private String fileName;
}
