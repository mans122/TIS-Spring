package com.rose.domain;

import java.util.Date;
import java.util.List;


import lombok.Data;

@Data
public class ShowVO {

	private Long s_no;
	private String s_name;
	private Date s_s_date;
	private Date s_e_date;
	private String s_actor;
	private String s_director;
	private String s_sell_link;
	private String s_genre;
	private String s_class;
	private String s_content;
	private int s_reply_cnt;
	private int s_view_cnt;
	
	//첨부파일 목록 - 개발자마다 견해가 다르다.
	private List<ShowAttachVO> attachList;
	
}
