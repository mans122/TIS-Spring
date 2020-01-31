package com.rose.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ConcertVO {

	private Long c_no;
	private String c_name;
	private Date c_s_date;
	private Date c_e_date;
	private String c_actor;
	private String c_director;
	private String c_sell_link;
	private String c_genre;
	private String c_class;
	private String c_content;
	private int c_reply_cnt;
	private int c_view_cnt;
	
	
}
