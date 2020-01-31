package com.rose.domain;

import lombok.Data;

@Data
public class ShowAttachVO {

	private Long s_no;
	private String uuid;
	private String file_name;
	private String upload_path;
}
