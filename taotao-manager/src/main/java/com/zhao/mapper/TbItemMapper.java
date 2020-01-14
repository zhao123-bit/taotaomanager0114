package com.zhao.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhao.bean.TbItem;

public interface TbItemMapper {

	TbItem findTbItemById(Long tbItemId);
	
	/**
	 * 查询商品表总记录条数
	 * @return 商品表总记录条数
	 */
	int findTbItemCount();
	
	/**
	 * 分页显示商品信息
	 * @param index 当前索引
	 * @param pageSize 每一页显示的条数
	 * @return 分页的商品信息集合对象
	 * index外界传进来的参数 名字叫做index
	 */
	List<TbItem> findTbItemByPage(@Param("index") Integer index,@Param("pageSize") Integer pageSize);
	
	/**
	 * 根据商品id删除商品信息 
	 * @param date 
	 * @param items
	 * @return 如果返回的数据大于0表示删除成功
	
		int delteItemByIds(@Param("ids") List<Long> ids);
	 */
	int updateItemByIds(@Param("ids") List<Long> ids,@Param("type") Integer type,@Param("date") Date date);

	int findTbItemCountBySearch(@Param("title")String title, @Param("priceMin")Integer priceMin, @Param("priceMax")Integer priceMax, @Param("cId")Long cId);
	/**
	 * 多条件查询商品信息并且分页显示
	 * @param index 开始索引 默认值为0
	 * @param limit 每一页显示的条数 默认值为10
	 * @param title 商品名称
	 * @param priceMin 商品最低价格 默认值为0
	 * @param priceMax 商品最高价格 默认值为 100000
	 * @param cId 商品分类id
	 * @return 分页显示的商品信息
	 */
	List<TbItem> findTbItemBySearchPage(@Param("index")int index, @Param("limit")Integer limit, @Param("title")String title, @Param("priceMin")Integer priceMin, @Param("priceMax")Integer priceMax, @Param("cId")Long cId);

}
