package kr.iei.hotel.member.dto;

public class MemberOAuth2JoinFormDto extends MemberJoinFormDto {

	public MemberOAuth2JoinFormDto() {}
	
	@Override
	public void setMemberPassword(String MemberPassword) {
	}
	
	@Override
	public void setMemberName(String memberName) {
	}
	
	@Override
	public void setMemberPhone(String MemberPhone) {
	}
	
	@Override
	public void setMemberKey(String memberKey) {
		super.memberKey = memberKey;
	}

}
