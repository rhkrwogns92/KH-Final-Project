package kr.iei.hotel.member.dto;

import java.sql.Date;

public class MemberDto {

	protected Long memberNumber;
	protected String memberEmail;
	protected String memberPassword;
	protected String memberName;
	protected String memberNick;
	protected String memberPhone;
	protected Date memberRegDate;
	protected Date memberUnRegDate;
	protected Date memberPwChangeDate;
	protected String memberAgree;
	protected String memberGrade;
	protected String memberRole;
	protected String memberKey;
	
	public MemberDto() {}
	
	public MemberDto(	String memberEmail,			String memberRole,		String memberKey) {
		this.memberRole = memberRole;
		this.memberEmail = memberEmail;
		this.memberKey = memberKey;
	}

	public MemberDto(		Long memberNumber,			String memberEmail,		String memberPassword,		
							String memberName,			String memberNick,		String memberPhone,
							Date memberRegDate,		Date memberUnRegDate,		Date memberPwChangeDate,
							String memberAgree,			String memberGrade,		String memberRole,			String memberKey) {
		this.memberNumber = memberNumber;
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberNick = memberNick;
		this.memberPhone = memberPhone;
		this.memberRegDate = memberRegDate;
		this.memberUnRegDate = memberUnRegDate;
		this.memberPwChangeDate = memberPwChangeDate;
		this.memberAgree = memberAgree;
		this.memberGrade = memberGrade;
		this.memberRole = memberRole;
		this.memberKey = memberKey;		
	}

	public Long getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(Long memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberNick() {
		return memberNick;
	}

	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	
	public Date getMemberRegDate() {
		return memberRegDate;
	}

	public void setMemberRegDate(Date memberRegDate) {
		this.memberRegDate = memberRegDate;
	}

	public Date getMemberUnRegDate() {
		return memberUnRegDate;
	}

	public void setMemberUnRegDate(Date memberUnRegDate) {
		this.memberUnRegDate = memberUnRegDate;
	}

	public Date getMemberPwChangeDate() {
		return memberPwChangeDate;
	}

	public void setMemberPwChangeDate(Date memberPwChangeDate) {
		this.memberPwChangeDate = memberPwChangeDate;
	}

	public String getMemberAgree() {
		return memberAgree;
	}

	public void setMemberAgree(String memberAgree) {
		this.memberAgree = memberAgree;
	}

	public String getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public String getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(String memberRole) {
		this.memberRole = memberRole;
	}

	public String getMemberKey() {
		return memberKey;
	}

	public void setMemberKey(String memberKey) {
		this.memberKey = memberKey;
	}

	@Override
	public String toString() {
		return "MemberDto [memberNumber=" + memberNumber + ", memberEmail=" + memberEmail + ", memberPassword="
				+ memberPassword + ", memberName=" + memberName + ", memberNick=" + memberNick + ", memberPhone="
				+ memberPhone + ", memberRegDate=" + memberRegDate + ", memberUnRegDate=" + memberUnRegDate
				+ ", memberPwChangeDate=" + memberPwChangeDate + ", memberAgree=" + memberAgree + ", memberGrade="
				+ memberGrade + ", memberRole=" + memberRole + ", memberKey=" + memberKey + "]";
	}

}
