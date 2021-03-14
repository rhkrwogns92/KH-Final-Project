package kr.iei.hotel.notice.vo;

public class NoticeVo {
	
	int nNo;
	String title;
	String contents;
	String hit;
	String regdate;
	int pub;
		
	int preNo;
	String preTitle;
	String preDate;
	int prePub;
	
	int nextNo;
	String nextTitle;
	String nextDate;
	int nextPub;
	
	
	public int getPrePub() {
		return prePub;
	}
	public void setPrePub(int prePub) {
		this.prePub = prePub;
	}
	public int getNextPub() {
		return nextPub;
	}
	public void setNextPub(int nextPub) {
		this.nextPub = nextPub;
	}
	public String getPreDate() {
		return preDate;
	}
	public void setPreDate(String preDate) {
		this.preDate = preDate;
	}
	public String getNextDate() {
		return nextDate;
	}
	public void setNextDate(String nextDate) {
		this.nextDate = nextDate;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getnNo() {
		return nNo;
	}
	public void setnNo(int nNo) {
		this.nNo = nNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}	
	public int getPub() {
		return pub;
	}
	public void setPub(int pub) {
		this.pub = pub;
	}
	public int getPreNo() {
		return preNo;
	}
	public void setPreNo(int preNo) {
		this.preNo = preNo;
	}
	public String getPreTitle() {
		return preTitle;
	}
	public void setPreTitle(String preTitle) {
		this.preTitle = preTitle;
	}
	public int getNextNo() {
		return nextNo;
	}
	public void setNextNo(int nextNo) {
		this.nextNo = nextNo;
	}
	public String getNextTitle() {
		return nextTitle;
	}
	public void setNextTitle(String nextTitle) {
		this.nextTitle = nextTitle;
	}

		
}
