package kr.co.book.vo;

public class AlarmVO {
	private int alarmIdx;
	private String alarmId;
	private String alarmBook;
	private String alarmDate;
	
	public AlarmVO() {
		super();
	}
	public AlarmVO(int alarmIdx, String alarmId, String alarmBook, String alarmDate) {
		super();
		this.alarmIdx = alarmIdx;
		this.alarmId = alarmId;
		this.alarmBook = alarmBook;
		this.alarmDate = alarmDate;
	}
	
	public int getAlarmIdx() {
		return alarmIdx;
	}
	public void setAlarmIdx(int alarmIdx) {
		this.alarmIdx = alarmIdx;
	}
	public String getAlarmId() {
		return alarmId;
	}
	public void setAlarmId(String alarmId) {
		this.alarmId = alarmId;
	}
	public String getAlarmBook() {
		return alarmBook;
	}
	public void setAlarmBook(String alarmBook) {
		this.alarmBook = alarmBook;
	}
	public String getAlarmDate() {
		return alarmDate;
	}
	public void setAlarmDate(String alarmDate) {
		this.alarmDate = alarmDate;
	}
	
	
}
