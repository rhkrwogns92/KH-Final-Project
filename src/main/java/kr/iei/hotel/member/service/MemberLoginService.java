package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberDto;

public interface MemberLoginService {
	
	void autoLogin(MemberDto memberDto);

	void updatePwChangeDate();
	
	MemberDto getSessionMemberDto();
	
}
