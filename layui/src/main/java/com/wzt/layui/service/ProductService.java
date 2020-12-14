package com.wzt.layui.service;

import com.wzt.layui.vo.BarVO;
import com.wzt.layui.vo.DataVO;
import com.wzt.layui.vo.PieVO;
import com.wzt.layui.vo.ProductVO;

import java.util.List;

/**
 * @User:Tao
 * @date:2020/12/9
 */
public interface ProductService {

    public DataVO<ProductVO> findData(Integer page, Integer limit);

    public BarVO getBarVO();

    public List<PieVO> getPieVO();
}
