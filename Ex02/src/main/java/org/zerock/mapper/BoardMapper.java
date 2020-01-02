package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	//조회
	//public List<BoardVO> getList();
	
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
	
	//전체 레코드 수 
	public int getTotalCount(Criteria cri);
	
	//댓글개수 카운트
	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
	
	
}
