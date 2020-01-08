package org.zerock.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

//MVC에서 getter setter를 생성해줬지만 여기선 롬복으로 처리하기위해 annotation을 써준다.
@Data
public class BoardVO {
	private Long bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updateDate;
	private int replyCnt;
	
	private List<BoardAttachVO> attachList;
}
