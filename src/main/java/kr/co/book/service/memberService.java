package kr.co.book.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.book.dao.memberDao;
import kr.co.book.vo.MemberLoginVO;
import kr.co.book.vo.MemberVO;

@Service
public class memberService {

	@Autowired
	private memberDao dao;
	
	public MemberVO login(MemberLoginVO mem) {
		return dao.login(mem);
	}

	public ArrayList<MemberVO> getLibrary() {
		return (ArrayList<MemberVO>)dao.getLibrary();
	}

	public int join(MemberVO member) {
		return dao.join(member);
	}

}
