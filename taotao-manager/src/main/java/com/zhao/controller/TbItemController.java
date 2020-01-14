package com.zhao.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhao.bean.TbItem;
import com.zhao.common.LayuiTableResult;
import com.zhao.common.TaotaoResult;
import com.zhao.service.TbItemService;

@Controller(value="controller01")
@RequestMapping("/item")
public class TbItemController {
	//(自动装配)
	@Autowired
	private TbItemService tbItemService;
	@RequestMapping("/{itemId}")
	@ResponseBody
	public TbItem findTbItemById(@PathVariable Long itemId){
		TbItem tbItem = tbItemService.findTbItemById(itemId);
		return tbItem;
	}
	@RequestMapping("/showItemPage")
	@ResponseBody
	public LayuiTableResult findTbItemByPage(Integer page,Integer limit){
		LayuiTableResult result = tbItemService.findItemByPage(page, limit);
		return result;
	}
	//批量删除
	@RequestMapping("/itemDelete")
	@ResponseBody
	public TaotaoResult deleteItemById(@RequestBody List<TbItem> items){
		Date date = new Date();
		TaotaoResult result = tbItemService.updateItems(items, 2,date);
		return result;
	}
	//上架
	@RequestMapping("/commodityUpperShelves")
	@ResponseBody
	public TaotaoResult commodityUpperShelves(@RequestBody List<TbItem> items){
		Date date = new Date();
		TaotaoResult result = tbItemService.updateItems(items,1,date);
		return result;
	}
	//下架
	@RequestMapping("/commodityLowerShelves")
	@ResponseBody
	public TaotaoResult commodityLowerShelves(@RequestBody List<TbItem> items){
		Date date = new Date();
		TaotaoResult result = tbItemService.updateItems(items,0,date);
		System.out.println(result);
		return result;
	}
	//多条件搜索
	@RequestMapping("/searchTbItem")
	@ResponseBody
	public LayuiTableResult searchTbItem(Integer page,Integer limit,String title,Integer priceMin,Integer priceMax,Long cId){
		LayuiTableResult result = tbItemService.searchItems(page, limit, title, priceMin, priceMax, cId);
		return result;
	}
	
}
