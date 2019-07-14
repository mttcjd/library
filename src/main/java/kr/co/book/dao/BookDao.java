package kr.co.book.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.book.vo.BookVO;
import kr.co.book.vo.RentVO;
import kr.co.book.vo.SearchVO;

@Repository
public class BookDao {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int insertBook(BookVO book) {
		return sql.insert("book.insertBook",book);
	}

	public int totalCount(SearchVO search) {
		return sql.selectOne("book.totalCount",search);
	}

	public List selectList(SearchVO search) {
		return sql.selectList("book.selectList",search);
	}

	public List selectList() {
		return sql.selectList("book.recentList");
	}

	public BookVO selectBook(int no) {
		return sql.selectOne("book.selectBook",no);
	}

	public int totalRent(SearchVO search) {
		return sql.selectOne("book.totalRent",search);
	}

	public List selectRent(SearchVO search) {
		return sql.selectList("book.selectRent",search);
	}

	public int rentBook(RentVO rent) {
		return sql.insert("book.rentBook",rent);
	}

	public int updateState(int bookIdx) {
		return sql.update("book.updateState",bookIdx);
	}

	public int updateBook(BookVO book) {
		return sql.update("book.updateBook",book);
	}

	public RentVO getRentId(int no) {
		return sql.selectOne("book.getRentId",no);
	}

	
}
