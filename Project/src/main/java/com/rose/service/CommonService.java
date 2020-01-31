package com.rose.service;

import java.util.List;

import com.rose.domain.ConcertVO;
import com.rose.domain.MusicalVO;
import com.rose.domain.ShowVO;

public interface CommonService {
	// 연극 상위4개
	public List<ShowVO> getTopShowList(); 

	// 뮤지컬 상위4개
	public List<MusicalVO> getTopMusicalList();

	// 공연 상위4개
	public List<ConcertVO> getTopConcertList();
}
