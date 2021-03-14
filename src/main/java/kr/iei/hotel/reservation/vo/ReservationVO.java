package kr.iei.hotel.reservation.vo;

public class ReservationVO {
	String reservationNo;
	Long memberNumber;
	String guestRoomName;
	int guestRoomNo;
	int checkIn;
	int checkOut;
	int lodgmentPeriod;
	int totalPrice;
	int adult;
	int child;
	String reservationDate;
	String memberName;
	String memberGrade;
	
	String discount;
	int adultCount;
	int childCount;
	int standardPersonnel;
	int guestRoomRemaining;
	
	int number1 = 1;
	
	
	

	public int getNumber1() {
		return number1;
	}
	public void setNumber1(int number1) {
		this.number1 = number1;
	}
	public String getReservationNo() {
		return reservationNo;
	}
	public void setReservationNo(String reservationNo) {
		this.reservationNo = reservationNo;
	}


	public Long getMemberNumber() {
		return memberNumber;
	}
	public void setMemberNumber(Long memberNumber) {
		this.memberNumber = memberNumber;
	}
	public String getGuestRoomName() {
		return guestRoomName;
	}
	public void setGuestRoomName(String guestRoomName) {
		this.guestRoomName = guestRoomName;
	}
	public int getGuestRoomNo() {
		return guestRoomNo;
	}
	public void setGuestRoomNo(int guestRoomNo) {
		this.guestRoomNo = guestRoomNo;
	}
	public int getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(int checkIn) {
		this.checkIn = checkIn;
	}
	public int getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(int checkOut) {
		this.checkOut = checkOut;
	}
	public int getLodgmentPeriod() {
		return lodgmentPeriod;
	}
	public void setLodgmentPeriod(int lodgmentPeriod) {
		this.lodgmentPeriod = lodgmentPeriod;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	public String getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}

	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public int getAdultCount() {
		return adultCount;
	}
	public void setAdultCount(int adultCount) {
		this.adultCount = adultCount;
	}
	public int getChildCount() {
		return childCount;
	}
	public void setChildCount(int childCount) {
		this.childCount = childCount;
	}
	public int getStandardPersonnel() {
		return standardPersonnel;
	}
	public void setStandardPersonnel(int standardPersonnel) {
		this.standardPersonnel = standardPersonnel;
	}
	public int getGuestRoomRemaining() {
		return guestRoomRemaining;
	}
	public void setGuestRoomRemaining(int guestRoomRemaining) {
		this.guestRoomRemaining = guestRoomRemaining;
	}
		
}
