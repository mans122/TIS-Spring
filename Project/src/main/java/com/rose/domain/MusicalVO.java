package com.rose.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MusicalVO {

	private Long m_no;
	private String m_name;
	private Date m_s_date;
	private Date m_e_date;
	private String m_actor;
	private String m_director;
	private String m_sell_link;
	private String m_genre;
	private String m_class;
	private String m_content;
	private int m_reply_cnt;
	private int m_view_cnt;
	
	
}
