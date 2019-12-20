package org.zerock.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.mapper.TimeMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

@Log4j
public class TimeMapperTests {
	@Setter(onMethod_ = @Autowired)
	private TimeMapper timeMapper;
	
	@Test
	public void testGetTime2() {
		/* 여기서 사용하는 timeMapper.getTime2는 src/main/resources/org.zerock.mapper/TimeMapper.xml에
		 * 존재하는 getTime2 라는 id를 가진 태그를 호출한다
		 */
		log.info("getTime2");
		log.info(timeMapper.getTime2());
	
	}
}
