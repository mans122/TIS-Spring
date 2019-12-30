package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

public interface ReplyMapper {
	//Create
	public int insert(ReplyVO vo);
	
	//Read
	public ReplyVO read(Long bno);
	
	//Update
	public int update(ReplyVO reply);
	
	//Delete
	public int delete(Long rno);
	
	//댓글 목록
	public List<ReplyVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("bno") Long bno);
	
}

