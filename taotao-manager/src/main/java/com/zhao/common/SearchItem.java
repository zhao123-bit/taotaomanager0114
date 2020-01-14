package com.zhao.common;

import java.io.Serializable;
import java.util.List;

import com.zhao.bean.TbItem;

//商品搜索的分页信息显示
public class SearchItem implements Serializable {
	private List<TbItem> itemList;
	private Long recordCount;// 总记录条数
	private Long pageCount;// 总页数
	private String image;

	@Override
	public String toString() {
		return "SearchItem [itemList=" + itemList + ", recordCount=" + recordCount + ", pageCount=" + pageCount
				+ ", image=" + image + "]";
	}

	public List<TbItem> getItemList() {
		return itemList;
	}

	public void setItemList(List<TbItem> itemList) {
		this.itemList = itemList;
	}

	public Long getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(Long recordCount) {
		this.recordCount = recordCount;
	}

	public Long getPageCount() {
		return pageCount;
	}

	public void setPageCount(Long pageCount) {
		this.pageCount = pageCount;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String[] getImages() {
		if (image != null && !"".equals(image)) {
			String[] strings = image.split(",");
			return strings;
		}
		return null;
	}

}
