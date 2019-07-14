package kr.co.book.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.book.dao.BookDao;
import kr.co.book.vo.BookListVO;
import kr.co.book.vo.BookVO;
import kr.co.book.vo.MemberVO;
import kr.co.book.vo.RentListVO;
import kr.co.book.vo.RentVO;
import kr.co.book.vo.SearchVO;

@Service
public class BookService {
	
	@Autowired
	private BookDao dao;

	public int insertBook(BookVO book) {
		return dao.insertBook(book);
	}

	@SuppressWarnings("unchecked")
	public BookListVO selectBook(SearchVO search) {
		int reqPage = search.getReqPage();
		int total = dao.totalCount(search);
		
		int pageNum = 5;
		int totalPage = (total%pageNum==0)?(total/pageNum):(total/pageNum)+1;
		search.setStart((reqPage*pageNum-pageNum)+1);
		search.setEnd(reqPage*pageNum);
		
		/* 리스트 */
		ArrayList<BookVO> bookList = (ArrayList<BookVO>)(dao.selectList(search));
		
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

		BookListVO list = new BookListVO(bookList, pageNavi);
		return list;
	}

	public ArrayList<BookVO> selectBook() {
		return (ArrayList<BookVO>)(dao.selectList());
	}

	public BookVO selectBook(int no) {
		BookVO book = dao.selectBook(no);
		if(book.getBookState()==1){
			RentVO rent = dao.getRentId(no);
			book.setRentId(rent.getRentId());
			book.setDueDate(rent.getDueDate());
		}
		return book;
	}

	public RentListVO selectRent(SearchVO search) {
		int reqPage = search.getReqPage();
		int total = dao.totalRent(search);
		
		int pageNum = 5;
		int totalPage = (total%pageNum==0)?(total/pageNum):(total/pageNum)+1;
		search.setStart((reqPage*pageNum-pageNum)+1);
		search.setEnd(reqPage*pageNum);
		
		/* 리스트 */
		ArrayList<RentVO> rentList = (ArrayList<RentVO>)(dao.selectRent(search));
		
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

	public int rentBook(RentVO rent) {
		int result =  dao.rentBook(rent);
		if(result==1){
			result = dao.updateState(rent.getRentBook());
		}
		return result;
	}

	public int updateBook(BookVO book) {
		return dao.updateBook(book);
	}

}
