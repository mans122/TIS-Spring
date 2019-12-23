package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;


public interface BoardService {
	//등록
	public void register(BoardVO board);
	
	//상세보기
	public BoardVO get(Long bno);

	//업데이트
	public boolean modify(BoardVO board);
	
	//지우기
	public boolean remove(Long bno);
	
	//목록조회
	public List<BoardVO> getList();
}
