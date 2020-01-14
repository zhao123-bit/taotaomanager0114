package com.zhao.common;

import java.io.Serializable;
import java.util.List;

//layui数据表格返回数据处理类
public class LayuiTableResult implements Serializable{
	private int code;
	private String msg;
	private int count;
	private List<?> data;//就是就是分类的对象 集合 名字叫做data
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<?> getData() {
		return data;
	}
	public void setData(List<?> data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "LayuiTableResult [code=" + code + ", msg=" + msg + ", count=" + count + ", data=" + data + "]";
	}
	
}
