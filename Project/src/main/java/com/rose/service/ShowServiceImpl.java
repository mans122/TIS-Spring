package com.rose.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rose.domain.ShowAttachVO;
import com.rose.domain.ShowVO;
import com.rose.mapper.ShowAttachMapper;
import com.rose.mapper.ShowMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ShowServiceImpl implements ShowService {
	@Setter(onMethod_=@Autowired)
	private ShowMapper mapper;
	
	@Setter(onMethod_=@Autowired)
	private ShowAttachMapper attachMapper;
	
	//연극 게시판 목록
	@Override
	public List<ShowVO> getList() {
		log.info("ShowList.....");
		
		return mapper.getList();
	}
	//끝 연극 게시판 목록
	
	//연극 게시판 썸네일 목록
	/*
	 * @Override public List<ShowAttachVO> getThumbList() {
	 * log.info("ShowAttachList....."); return attachMapper.getThumbList(); }
	 */
	//끝 연극 게시판 썸네일 목록

	//연극 게시판 상세보기
	@Override
	public ShowVO showDetail(Long s_no) {
		log.info("ShowDetail.....");
		return mapper.showDetail(s_no);
	}
	//끝 연극 게시판 상세보기
	
//	@Transactional
	@Override
	public void showWrite(ShowVO show) {
		log.info("register....."+show);
		mapper.showWrite(show);
		
		//첨부파일이 없을 경우는 중지
//		if(show.getAttachList()==null||show.getAttachList().size()<=0) {
//			return;
//		}
//		show.getAttachList().forEach(attach->{
//			attach.setBno(show.getBno());
//			attachMapper.insert(attach);
//		});
	}
	//끝 연극 글쓰기
}
