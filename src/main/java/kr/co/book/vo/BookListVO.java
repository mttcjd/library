package kr.co.book.vo;

import java.util.ArrayList;

public class BookListVO {
	
	private ArrayList<BookVO> bookList;
	private String pageNavi;
	
	public BookListVO() {
		super();
	}
	public BookListVO(ArrayList<BookVO> bookList, String pageNavi) {
		super();
		this.bookList = bookList;
		this.pageNavi = pageNavi;
	}
	
	public ArrayList<BookVO> getBookList() {
		return bookList;
	}
	public void setBookList(ArrayList<BookVO> bookList) {
		this.bookList = bookList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	

}
