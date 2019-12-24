package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	//조회
	public List<BoardVO> getList();
	
	//페이징 목록
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	//등록
	public void insert(BoardVO board);
	
	//등록2
	public void insertSelectKey(BoardVO board);
	
	//상세보기
	public BoardVO read(Long bno);
	
	//삭제 
	public int delete(Long bno);
	
	//업뎃
	public int update(BoardVO board);
	
	
}
