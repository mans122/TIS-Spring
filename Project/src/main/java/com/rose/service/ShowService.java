package com.rose.service;

import java.util.List;

import com.rose.domain.ShowAttachVO;
import com.rose.domain.ShowVO;

public interface ShowService {

	//연극 게시판 목록
	public List<ShowVO> getList();
	
	//연극 게시판 썸네일 목록
	/* public List<ShowAttachVO> getThumbList(); */
	
	//연극 게시판 상세보기
	public ShowVO showDetail(Long s_no);
	
	//연극 글쓰기
	public void showWrite(ShowVO show);
}
