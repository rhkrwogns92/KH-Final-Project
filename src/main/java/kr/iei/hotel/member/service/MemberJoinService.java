package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberJoinFormDto;

public interface MemberJoinService {

	void join(MemberJoinFormDto memberJoinFormDto);

	int checkEmail(String memberEmail);

	int checkNick(String memberNick);

	String passwordEncode(String memberPassword);
	
	void changePassword(String memberEmail, String Password);

	void addKey(String memberEmail, String memberKey);
	
}
