package org.zerock.mapper;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

@Log4j
public class BoardMapperTests {
	//BoardMapper를 주입하겠다는 뜻
	@Setter(onMethod_=@Autowired)
	private BoardMapper mapper;

	/*
	@Test
	public void testGetList() {
		mapper.getList().forEach(board ->log.info(board));
	}
	*/
	
	/*
	@Test
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setTitle("새글");
		board.setContent("dddddddddddddd");
		board.setWriter("newbie");
		
		mapper.insert(board);
		
		log.info(board);
	}
	*/

	/*
	@Test
	public void testInsertSelectKey() {
		BoardVO board = new BoardVO();
		board.setTitle("새글");
		board.setContent("dddddddddddddd");
		board.setWriter("newbie");
		
		mapper.insertSelectKey(board);
		
		log.info(board);
	}*/
	
	/*
	@Test
	public void testRead() {
		BoardVO board = mapper.read(22L);
		log.info(board);
	}*/
	/*
	@Test
	public void testDelete() {
		log.info("deletecount:"+mapper.delete(22L));
	}
	*/
//	
//	@Test
//	public void testUpdate() {
//		BoardVO board = new BoardVO();
//		board.setBno(1L);
//		board.setTitle("새글2");
//		board.setContent("ddd2ddddddddddd");
//		board.setWriter("newb2ie");
//		
//		int count=mapper.update(board);
//		log.info("update count :"+count);		
//	}
}
