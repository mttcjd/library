package kr.co.book.vo;

public class BookVO {
	private int rnum;
	private int bookIdx;
	private String bookLib;
	private String libName;
	private String bookName;
	private String bookGenre;
	private String bookPublisher;
	private String bookAuthor;
	private String bookPubDate;
	private String bookLocation;
	private String bookSerial;
    private int bookState;
    private String bookReserveId;
    private String bookRegDate;
    private String rentId;
    private String dueDate;
	
    public BookVO() {
		super();
	}

	

	public BookVO(int rnum, int bookIdx, String bookLib, String libName, String bookName, String bookGenre,
			String bookPublisher, String bookAuthor, String bookPubDate, String bookLocation, String bookSerial,
			int bookState, String bookRegDate) {
		super();
		this.rnum = rnum;
		this.bookIdx = bookIdx;
		this.bookLib = bookLib;
		this.libName = libName;
		this.bookName = bookName;
		this.bookGenre = bookGenre;
		this.bookPublisher = bookPublisher;
		this.bookAuthor = bookAuthor;
		this.bookPubDate = bookPubDate;
		this.bookLocation = bookLocation;
		this.bookSerial = bookSerial;
		this.bookState = bookState;
		this.bookRegDate = bookRegDate;
	}



	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getBookIdx() {
		return bookIdx;
	}

	public void setBookIdx(int bookIdx) {
		this.bookIdx = bookIdx;
	}

	public String getBookLib() {
		return bookLib;
	}

	public void setBookLib(String bookLib) {
		this.bookLib = bookLib;
	}
	

	public String getLibName() {
		return libName;
	}

	public void setLibName(String libName) {
		this.libName = libName;
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

	public String getBookPublisher() {
		return bookPublisher;
	}

	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}

	public String getBookAuthor() {
		return bookAuthor;
	}

	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}

	public String getBookPubDate() {
		return bookPubDate;
	}

	public void setBookPubDate(String bookPubDate) {
		this.bookPubDate = bookPubDate;
	}

	public String getBookLocation() {
		return bookLocation;
	}

	public void setBookLocation(String bookLocation) {
		this.bookLocation = bookLocation;
	}

	public String getBookSerial() {
		return bookSerial;
	}

	public void setBookSerial(String bookSerial) {
		this.bookSerial = bookSerial;
	}

	public int getBookState() {
		return bookState;
	}

	public void setBookState(int bookState) {
		this.bookState = bookState;
	}

	public String getBookRegDate() {
		return bookRegDate;
	}

	public void setBookRegDate(String bookRegDate) {
		this.bookRegDate = bookRegDate;
	}



	public String getRentId() {
		return rentId;
	}



	public void setRentId(String rentId) {
		this.rentId = rentId;
	}



	public String getDueDate() {
		return dueDate;
	}



	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}



	public String getBookReserveId() {
		return bookReserveId;
	}



	public void setBookReserveId(String bookReserveId) {
		this.bookReserveId = bookReserveId;
	}
	
	
	
    
}
