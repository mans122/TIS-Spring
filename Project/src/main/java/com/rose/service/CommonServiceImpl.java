package com.rose.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rose.domain.ConcertVO;
import com.rose.domain.MusicalVO;
import com.rose.domain.ShowVO;
import com.rose.mapper.CommonMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CommonServiceImpl implements CommonService{
	@Setter(onMethod_= {@Autowired})
	private CommonMapper mapper;

	@Override
	public List<ShowVO> getTopShowList() {
		log.info("CommonServiceImpl");
		return mapper.getTopShowList();
	}

	@Override
	public List<MusicalVO> getTopMusicalList() {
		// TODO Auto-generated method stub
		return mapper.getTopMusicalList();
	}

	@Override
	public List<ConcertVO> getTopConcertList() {
		// TODO Auto-generated method stub
		return mapper.getTopConcertList();
	}
	
	
}
