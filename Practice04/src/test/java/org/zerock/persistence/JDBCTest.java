package org.zerock.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;
import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("실패");
		}
	}

	@Test
	public void testConnection() {
		try(Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:myoracle","ora_user","hong")){
			log.info(con);
		}catch(Exception e) {
			fail(e.getMessage());
			log.info("실패");
		}
	}
}
