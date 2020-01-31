package com.rose.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.rose.domain.CmBoardVO;
import com.rose.domain.CmCriteria;
import com.rose.mapper.CmBoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CmBoardServiceImpl implements CmBoardService {
	
	private CmBoardMapper mapper;

	@Override
	public void register(CmBoardVO cmboard) {
		log.info("register..." + cmboard);
		mapper.insertSelectKey(cmboard);
	}

	@Override
	public CmBoardVO get(Long b_no) {
		log.info("get......" + b_no);
		return mapper.read(b_no);
	}

	@Override
	public boolean modify(CmBoardVO cmboard) {
		log.info("modify......" + cmboard);
		return mapper.update(cmboard) == 1;
	}

	@Override
	public boolean remove(Long b_no) {
		log.info("remove....." + b_no);
		return mapper.delete(b_no) == 1;
	}

	@Override
	public List<CmBoardVO> getList(CmCriteria cri) {
		log.info("getList with CmCriteria: " + cri);
		return mapper.getListWithPaging(cri);
	}

}
