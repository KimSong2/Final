package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("productoptionVO")
public class ProductOptionVO {
	private int optionId;
	private int productId;
	private String option;
	public int getOptionId() {
		return optionId;
	}
	public void setOptionId(int optionId) {
		this.optionId = optionId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	
}
