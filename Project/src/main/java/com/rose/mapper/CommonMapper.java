package com.rose.mapper;

import java.util.List;

import com.rose.domain.ConcertVO;
import com.rose.domain.MusicalVO;
import com.rose.domain.ShowVO;

public interface CommonMapper {
	//연극 상위 리스트
	public List<ShowVO> getTopShowList();
	
	//뮤지컬 상위 리스트
	public List<MusicalVO> getTopMusicalList();
	
	//공연 상위 리스트
	public List<ConcertVO> getTopConcertList();
}
