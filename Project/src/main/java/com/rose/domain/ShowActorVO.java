package com.rose.domain;

import lombok.Data;

@Data
public class ShowActorVO {
	
	private Long a_no;
	private Long s_no;
	private String actor_name;
	private String uuid;
	private String upload_path;
	private String file_name; 
}
