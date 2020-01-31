package com.rose.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CmCriteria {
	private int pageNum;
	private int amount;
	
	public CmCriteria() {
		this(1,10);
	}
	public CmCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

}
