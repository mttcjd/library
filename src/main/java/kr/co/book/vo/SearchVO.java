package kr.co.book.vo;

public class SearchVO {
	private int reqPage;
	private int start;
	private int end;
	private String genre;
	private String searchType;
	private String searchVal;
	private String memberId;
	private String sort;
	
	public SearchVO() {
		super();
	}

	public SearchVO(int reqPage, int start, int end, String genre, String searchType, String searchVal,
			String memberId) {
		super();
		this.reqPage = reqPage;
		this.start = start;
		this.end = end;
		this.genre = genre;
		this.searchType = searchType;
		this.searchVal = searchVal;
		this.memberId = memberId;
	}
	
	public SearchVO(int reqPage, String memberId) {
		super();
		this.reqPage = reqPage;
		this.memberId = memberId;
	}

	public int getReqPage() {
		return reqPage;
	}

	public void setReqPage(int reqPage) {
		this.reqPage = reqPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchVal() {
		return searchVal;
	}

	public void setSearchVal(String searchVal) {
		this.searchVal = searchVal;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}
	
	
	
}
