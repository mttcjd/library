package kr.co.book.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.book.dao.RentDao;
import kr.co.book.vo.AlarmVO;
import kr.co.book.vo.RentListVO;
import kr.co.book.vo.RentVO;
import kr.co.book.vo.SearchVO;

@Service
public class RentService {

	@Autowired
	private RentDao dao;

	public RentListVO rentListOfLibrary(SearchVO search) {
		int reqPage = search.getReqPage();
		int total = dao.totalRentOfLibrary(search);
		
		int pageNum = 5;
		int totalPage = (total%pageNum==0)?(total/pageNum):(total/pageNum)+1;
		search.setStart((reqPage*pageNum-pageNum)+1);
		search.setEnd(reqPage*pageNum);
		
		/* 리스트 */
		ArrayList<RentVO> rentList = (ArrayList<RentVO>)(dao.rentListOfLibrary(search));
		
		/* 페이지 네비 */
		int totalNavi = 5;
		String pageNavi = "";
		int pageNo = ((reqPage-1)/totalNavi)*totalNavi+1;
		if(pageNo != 1) {
			pageNavi += "<a href='javascript:list("+(pageNo-1)+");'>이전</a>";	
		}
		int i = 1;
		while(!(i++>totalNavi || pageNo>totalPage)) {
			if(reqPage == pageNo) {
				pageNavi += "<a class='on'>"+pageNo+"</a>";
			}else {
				pageNavi += "<a href='javascript:list("+pageNo+");'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		if(pageNo <= totalPage) {
			pageNavi += "<a href='javascript:list("+pageNo+");'>다음</a>";
		}

		RentListVO list = new RentListVO(rentList, pageNavi);
		return list;
	}

	public int returnBook(RentVO rent) {
		int result = dao.returnBook(rent);
		return result;
	}

	public int reserve(RentVO rent) {
		return dao.reserve(rent);
	}

	public ArrayList<AlarmVO> alarm(String memberId) {
		return (ArrayList<AlarmVO>)dao.alarm(memberId);
	}
	
}
