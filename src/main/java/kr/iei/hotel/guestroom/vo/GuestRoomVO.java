package kr.iei.hotel.guestroom.vo;

import org.springframework.web.multipart.MultipartFile;

public class GuestRoomVO {
	private String guestRoomName;
	private String guestRoomContents1;
	private String guestRoomContents2;
	private String guestRoomService1;
	private String guestRoomService2;
	private String guestRoomAmenity;
	private String guestRoomInformation;
	private String guestRoomImage1;
	private String guestRoomImage2;
	private String guestRoomImage3;
	private String guestRoomImage4;
	
	
	private MultipartFile image1;
	private MultipartFile image2;
	private MultipartFile image3;
	private MultipartFile image4;
	
	
	private int guestRoomNo;
	private int guestRoomPrice;
	private String guestRoomView;
	private int guestRoomArea;
	private String guestRoomBedType;
	private int standardPersonnel;
	private int adultPrice;
	private int childPrice;
	private int standardNo;
	
	private final int StandardNumber = 1;
	
	
	public int getStandardNo() {
		return standardNo;
	}
	public void setStandardNo(int standardNo) {
		this.standardNo = standardNo;
	}
	public int getGuestRoomNo() {
		return guestRoomNo;
	}
	public void setGuestRoomNo(int guestRoomNo) {
		this.guestRoomNo = guestRoomNo;
	}
	public int getGuestRoomPrice() {
		return guestRoomPrice;
	}
	public void setGuestRoomPrice(int guestRoomPrice) {
		this.guestRoomPrice = guestRoomPrice;
	}
	public String getGuestRoomView() {
		return guestRoomView;
	}
	public void setGuestRoomView(String guestRoomView) {
		this.guestRoomView = guestRoomView;
	}
	public int getGuestRoomArea() {
		return guestRoomArea;
	}
	public void setGuestRoomArea(int guestRoomArea) {
		this.guestRoomArea = guestRoomArea;
	}
	public String getGuestRoomBedType() {
		return guestRoomBedType;
	}
	public void setGuestRoomBedType(String guestRoomBedType) {
		this.guestRoomBedType = guestRoomBedType;
	}
	public int getStandardPersonnel() {
		return standardPersonnel;
	}
	public void setStandardPersonnel(int standardPersonnel) {
		this.standardPersonnel = standardPersonnel;
	}
	public int getAdultPrice() {
		return adultPrice;
	}
	public void setAdultPrice(int adultPrice) {
		this.adultPrice = adultPrice;
	}
	public int getChildPrice() {
		return childPrice;
	}
	public void setChildPrice(int childPrice) {
		this.childPrice = childPrice;
	}
	public MultipartFile getImage1() {
		return image1;
	}
	public void setImage1(MultipartFile image1) {
		this.image1 = image1;
	}
	public MultipartFile getImage2() {
		return image2;
	}
	public void setImage2(MultipartFile image2) {
		this.image2 = image2;
	}
	public MultipartFile getImage3() {
		return image3;
	}
	public void setImage3(MultipartFile image3) {
		this.image3 = image3;
	}
	public MultipartFile getImage4() {
		return image4;
	}
	public void setImage4(MultipartFile image4) {
		this.image4 = image4;
	}
	public String getGuestRoomName() {
		return guestRoomName;
	}
	public void setGuestRoomName(String guestRoomName) {
		this.guestRoomName = guestRoomName;
	}
	public String getGuestRoomContents1() {
		return guestRoomContents1;
	}
	public void setGuestRoomContents1(String guestRoomContents1) {
		this.guestRoomContents1 = guestRoomContents1;
	}
	public String getGuestRoomContents2() {
		return guestRoomContents2;
	}
	public void setGuestRoomContents2(String guestRoomContents2) {
		this.guestRoomContents2 = guestRoomContents2;
	}
	public String getGuestRoomService1() {
		return guestRoomService1;
	}
	public void setGuestRoomService1(String guestRoomService1) {
		this.guestRoomService1 = guestRoomService1;
	}
	public String getGuestRoomService2() {
		return guestRoomService2;
	}
	public void setGuestRoomService2(String guestRoomService2) {
		this.guestRoomService2 = guestRoomService2;
	}
	public String getGuestRoomAmenity() {
		return guestRoomAmenity;
	}
	public void setGuestRoomAmenity(String guestRoomAmenity) {
		this.guestRoomAmenity = guestRoomAmenity;
	}
	public String getGuestRoomInformation() {
		return guestRoomInformation;
	}
	public void setGuestRoomInformation(String guestRoomInformation) {
		this.guestRoomInformation = guestRoomInformation;
	}
	public String getGuestRoomImage1() {
		return guestRoomImage1;
	}
	public void setGuestRoomImage1(String guestRoomImage1) {
		this.guestRoomImage1 = guestRoomImage1;
	}
	public String getGuestRoomImage2() {
		return guestRoomImage2;
	}
	public void setGuestRoomImage2(String guestRoomImage2) {
		this.guestRoomImage2 = guestRoomImage2;
	}
	public String getGuestRoomImage3() {
		return guestRoomImage3;
	}
	public void setGuestRoomImage3(String guestRoomImage3) {
		this.guestRoomImage3 = guestRoomImage3;
	}
	public String getGuestRoomImage4() {
		return guestRoomImage4;
	}
	public void setGuestRoomImage4(String guestRoomImage4) {
		this.guestRoomImage4 = guestRoomImage4;
	}
	
}