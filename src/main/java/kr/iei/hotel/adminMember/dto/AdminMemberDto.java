package kr.iei.hotel.adminMember.dto;

import java.util.Date;

public class AdminMemberDto {

	private int no;
	private Long memberNumber;
	private String memberGrade;
	private Date memberRegDate;
	private Date memberUnRegDate;
	private Date memberPwChangeDate;
	private String memberAgree;
	private String memberRole;
	private String memberEmail;
	private String memberName;
	private String memberNick;
	private String memberPhone;
	private String memberPassword;
	private String memberKey;
	
	public AdminMemberDto() {}
	
	public AdminMemberDto(String memberRole, String memberEmail, String memberKey) {
		this.memberRole = memberRole;
		this.memberEmail = memberEmail;
		this.memberKey = memberKey;
	}

	public AdminMemberDto(Long memberNumber, String memberGrade, Date memberRegDate, Date memberUnRegDate,
			Date memberPwChangeDate, String memberAgree, String memberRole, String memberEmail, String memberName,
			String memberNick, String memberPhone, String memberPassword, String memberKey) {
		this.memberNumber = memberNumber;
		this.memberGrade = memberGrade;
		this.memberRegDate = memberRegDate;
		this.memberUnRegDate = memberUnRegDate;
		this.memberPwChangeDate = memberPwChangeDate;
		this.memberAgree = memberAgree;
		this.memberRole = memberRole;
		this.memberEmail = memberEmail;
		this.memberName = memberName;
		this.memberNick = memberNick;
		this.memberPhone = memberPhone;
		this.memberPassword = memberPassword;
		this.memberKey = memberKey;
	}


	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public final Long getMemberNumber() {
		return memberNumber;
	}

	public final void setMemberNumber(Long memberNumber) {
		this.memberNumber = memberNumber;
	}

	public final String getMemberGrade() {
		return memberGrade;
	}

	public final void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public final Date getMemberRegDate() {
		return memberRegDate;
	}

	public final void setMemberRegDate(Date memberRegDate) {
		this.memberRegDate = memberRegDate;
	}

	public final Date getMemberUnRegDate() {
		return memberUnRegDate;
	}

	public final void setMemberUnRegDate(Date memberUnRegDate) {
		this.memberUnRegDate = memberUnRegDate;
	}

	public final Date getMemberPwChangeDate() {
		return memberPwChangeDate;
	}

	public final void setMemberPwChangeDate(Date memberPwChangeDate) {
		this.memberPwChangeDate = memberPwChangeDate;
	}

	public final String getMemberAgree() {
		return memberAgree;
	}

	public final void setMemberAgree(String memberAgree) {
		this.memberAgree = memberAgree;
	}

	public final String getMemberRole() {
		return memberRole;
	}

	public final void setMemberRole(String memberRole) {
		this.memberRole = memberRole;
	}

	public final String getMemberEmail() {
		return memberEmail;
	}

	public final void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public final String getMemberName() {
		return memberName;
	}

	public final void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public final String getMemberNick() {
		return memberNick;
	}

	public final void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}

	public final String getMemberPhone() {
		return memberPhone;
	}

	public final void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public final String getMemberPassword() {
		return memberPassword;
	}

	public final void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public final String getMemberKey() {
		return memberKey;
	}

	public final void setMemberKey(String memberKey) {
		this.memberKey = memberKey;
	}

	@Override
	public String toString() {
		return "AdminMemberDto [no=" + no + ", memberNumber=" + memberNumber + ", memberGrade=" + memberGrade
				+ ", memberRegDate=" + memberRegDate + ", memberUnRegDate=" + memberUnRegDate + ", memberPwChangeDate="
				+ memberPwChangeDate + ", memberAgree=" + memberAgree + ", memberRole=" + memberRole + ", memberEmail="
				+ memberEmail + ", memberName=" + memberName + ", memberNick=" + memberNick + ", memberPhone="
				+ memberPhone + ", memberPassword=" + memberPassword + ", memberKey=" + memberKey + "]";
	}

}
