package com.rose.mapper;

import java.util.List;

import com.rose.domain.ShowAttachVO;


public interface ShowAttachMapper {

	//연극 게시판 썸네일 목록
	public List<ShowAttachVO> getThumbList();
}
