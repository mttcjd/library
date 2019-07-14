package kr.co.book.vo;

import java.util.ArrayList;

public class RentListVO {
	
	private ArrayList<RentVO> rentList;
	private String pageNavi;
	
	public RentListVO() {
		super();
	}
	public RentListVO(ArrayList<RentVO> rentList, String pageNavi) {
		super();
		this.rentList = rentList;
		this.pageNavi = pageNavi;
	}
	
	public ArrayList<RentVO> getRentList() {
		return rentList;
	}
	public void setRentList(ArrayList<RentVO> rentList) {
		this.rentList = rentList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	

}
