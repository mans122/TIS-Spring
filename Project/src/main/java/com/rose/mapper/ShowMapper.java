package com.rose.mapper;

import java.util.List;

import com.rose.domain.ShowVO;

public interface ShowMapper {

	//연극 게시판 목록
	public List<ShowVO> getList();
	
	//연극 상세보기
	public ShowVO showDetail(Long s_no);
	
	//연극 글쓰기
	public void showWrite(ShowVO show);
}
