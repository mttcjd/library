package kr.co.book.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.book.vo.MemberLoginVO;
import kr.co.book.vo.MemberVO;

@Repository
public class memberDao {
	
	@Autowired
	private SqlSessionTemplate sql;

	public MemberVO login(MemberLoginVO mem) {
		return sql.selectOne("member.login",mem);
	}

	public List getLibrary() {
		return sql.selectList("member.getLibrary");
	}

	public int join(MemberVO member) {
		return sql.insert("member.join",member);
	}

	
}
