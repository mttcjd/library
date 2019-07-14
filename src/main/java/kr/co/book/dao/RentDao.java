package kr.co.book.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.book.vo.RentVO;
import kr.co.book.vo.SearchVO;

@Repository
public class RentDao {

	@Autowired
	private SqlSessionTemplate sql;

	public int totalRentOfLibrary(SearchVO search) {
		return sql.selectOne("rent.totalRentOfLibrary",search);
	}

	public List rentListOfLibrary(SearchVO search) {
		return sql.selectList("rent.rentListOfLibrary",search);
	}

	public int returnBook(RentVO rent) {
		return sql.update("rent.returnBook",rent);
	}

	public int reserve(RentVO rent) {
		return sql.update("rent.reserveBook",rent);
	}

	public List alarm(String memberId) {
		return sql.selectList("rent.alarm",memberId);
	}
}
