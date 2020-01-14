package com.zhao.service;

import java.util.Date;
import java.util.List;

import com.zhao.bean.TbItem;
import com.zhao.common.LayuiTableResult;
import com.zhao.common.TaotaoResult;

public interface TbItemService {
	
	/**
	 * 根据商品id查询商品指定信息
	 * @param tbItem  商品id
	 * @return  指定商品id的商品信息
	 */
	TbItem findTbItemById(Long tbItemId);
	
	/**
	 * 分页显示商品信息
	 * @param page 当前页 需要计算索引的
	 * @param limit 每一页显示的条数
	 * @return layui指定的json格式
	 */
	LayuiTableResult findItemByPage(Integer page,Integer limit);
	
	/**
	  
	 * @param items 需要删除的商品信息集合对象 但是我们只要id
	 * @param date 
	 * @return 返回TaotaoResult对象
	TaotaoResult delteItemByIds(List<TbItem> items);
	 */
	
	TaotaoResult updateItems(List<TbItem> items, Integer type, Date date);
	
	
	/**
	 * 多条件查询商品信息
	 * @param page 开始索引 一开始为第一页 默认值为1
	 * @param limit 每一页显示的记录条数 
	 * @param title 商品名称 
	 * @param priceMin 商品价格区间最低价 
	 * @param priceMax 商品价格区间最高价 
	 * @param cId 商品分类id 
	 * @return layui需要的json格式对象
	 */
	LayuiTableResult searchItems(Integer page, Integer limit, String title, Integer priceMin, Integer priceMax,
			Long cId);
}
