package kr.iei.hotel.member.dto;

import java.sql.Date;

public class MemberJoinFormDto extends MemberDto {

	public MemberJoinFormDto() {}
	
	public MemberJoinFormDto(			Long memberNumber,			String memberEmail,		String memberPassword,		
										String memberName,			String memberNick,		String memberPhone,
										Date memberRegDate,		Date memberUnRegDate,		Date memberPwChangeDate,
										String memberAgree,			String memberGrade,		String memberRole,			String memberKey) {
		super(							null,						null,					null,
										null,						null,					null,
										null,						null,					null,
										null,						null,					null,					null);
	}
	
	@Override
	public void setMemberGrade(String memberGrade) {
	}
	
	@Override
	public void setMemberRegDate(Date memberRegDate) {
	}

	@Override
	public void setMemberUnRegDate(Date memberUnRegDate) {
	}

	@Override
	public void setMemberPwChangeDate(Date memberPwChangeDate) {
	}
	
	@Override
	public void setMemberRole(String memberRole) {
	}
	
	@Override
	public void setMemberKey(String memberKey) {
	}
	

}
