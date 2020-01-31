package com.rose.mapper;

import java.util.List;

import com.rose.domain.CmBoardVO;
import com.rose.domain.CmCriteria;

public interface CmBoardMapper {
	//목록
	public List<CmBoardVO> getList();
	
	// 등록 (인덱스를 알 필요 없는 경우)
	public void insert(CmBoardVO cmboard);
	
	// 등록2 (인덱스 알아내기)
	public void insertSelectKey(CmBoardVO cmboard);
	
	// 상세보기
	public CmBoardVO read(Long b_no);
	
	// 삭제
	public int delete(Long b_no);
	
	// 수정
	public int update(CmBoardVO cmboard);
	
	// 조회수
	public int updateViewCount(CmBoardVO cmboard);

	// 목록 with 페이징
	public List<CmBoardVO> getListWithPaging(CmCriteria cri);
}
