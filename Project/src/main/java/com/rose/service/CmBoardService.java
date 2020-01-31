package com.rose.service;

import java.util.List;

import com.rose.domain.CmBoardVO;
import com.rose.domain.CmCriteria;

public interface CmBoardService {
	// 등록
	public void register(CmBoardVO cmboard);
	
	// 상세보기
	public CmBoardVO get(Long b_no);
	
	// 수정
	public boolean modify(CmBoardVO cmboard);
    // 리턴값이 boolean 이므로 T,F 성공여부로 반영됨
	
	// 삭제
	public boolean remove(Long b_no);
	
	// 목록
	public List<CmBoardVO> getList(CmCriteria cri);

}
