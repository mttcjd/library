package kr.co.book.vo;

public class MemberVO {
	
	private int memberIdx;
	private String memberId;
	private String memberPw;
	private int memberType;
	private String memberName;
	private String phone;
	private String addr1;
	private String addr2;
	private String enrollDate;
	private String stopDate;
	private int state;
	
	public MemberVO() {
		super();
	}
	
	
	public MemberVO(int memberIdx, String memberId, String memberPw, String memberName, int memberType, String phone,
			String addr1, String addr2, String enrollDate, String stopDate, int state) {
		super();
		this.memberIdx = memberIdx;
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberType = memberType;
		this.phone = phone;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.enrollDate = enrollDate;
		this.stopDate = stopDate;
		this.state = state;
	}


	public int getMemberIdx() {
		return memberIdx;
	}
	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	public int getMemberType() {
		return memberType;
	}


	public void setMemberType(int memberType) {
		this.memberType = memberType;
	}


	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getStopDate() {
		return stopDate;
	}
	public void setStopDate(String stopDate) {
		this.stopDate = stopDate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	
	

}
