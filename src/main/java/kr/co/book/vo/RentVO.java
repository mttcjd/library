package kr.co.book.vo;

public class RentVO {
	private int rnum;
	private int rentIdx;
	private String rentId;
	private String memberName;
	private String phone;
	private int rentBook;
	private String bookName;
	private String bookGenre;
	private String bookAuthor;
	private String bookPublisher;
	private String bookPubDate;
	private String rentDate;
	private String dueDate;
	private String returnDate;
	private int rentState;
	
	public RentVO() {
		super();
	}

	public RentVO(int rnum, int rentIdx, String rentId, String memberName, String phone, int rentBook, String bookName,
			String bookGenre, String bookAuthor, String bookPublisher, String bookPubDate, String rentDate,
			String dueDate, String returnDate) {
		super();
		this.rnum = rnum;
		this.rentIdx = rentIdx;
		this.rentId = rentId;
		this.memberName = memberName;
		this.phone = phone;
		this.rentBook = rentBook;
		this.bookName = bookName;
		this.bookGenre = bookGenre;
		this.bookAuthor = bookAuthor;
		this.bookPublisher = bookPublisher;
		this.bookPubDate = bookPubDate;
		this.rentDate = rentDate;
		this.dueDate = dueDate;
		this.returnDate = returnDate;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getRentIdx() {
		return rentIdx;
	}

	public void setRentIdx(int rentIdx) {
		this.rentIdx = rentIdx;
	}

	public String getRentId() {
		return rentId;
	}

	public void setRentId(String rentId) {
		this.rentId = rentId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getRentBook() {
		return rentBook;
	}

	public void setRentBook(int rentBook) {
		this.rentBook = rentBook;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookGenre() {
		return bookGenre;
	}

	public void setBookGenre(String bookGenre) {
		this.bookGenre = bookGenre;
	}

	public String getBookAuthor() {
		return bookAuthor;
	}

	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}

	public String getBookPublisher() {
		return bookPublisher;
	}

	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}

	public String getBookPubDate() {
		return bookPubDate;
	}

	public void setBookPubDate(String bookPubDate) {
		this.bookPubDate = bookPubDate;
	}

	public String getRentDate() {
		return rentDate;
	}

	public void setRentDate(String rentDate) {
		this.rentDate = rentDate;
	}

	public String getDueDate() {
		return dueDate;
	}

	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}

	public int getRentState() {
		return rentState;
	}

	public void setRentState(int rentState) {
		this.rentState = rentState;
	}
	
	
}
