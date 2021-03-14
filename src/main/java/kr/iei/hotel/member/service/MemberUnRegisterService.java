package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberDto;

public interface MemberUnRegisterService {

	void deleteReply(MemberDto memberDto);
	
	int unRegister(MemberDto memberDto);
	
}
