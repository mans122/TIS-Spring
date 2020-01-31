package com.rose.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CmBoardVO {
	private Long b_no;
	private String title;
	private String content;
	private String writer;
	private Date reg_date;
	private Date update_date;
	private Long reply_cnt;
	private Long view_cnt;

}
