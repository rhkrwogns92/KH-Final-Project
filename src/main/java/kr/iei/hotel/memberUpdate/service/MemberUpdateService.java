package kr.iei.hotel.memberUpdate.service;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.memberUpdate.dto.MemberUpdateDto;

public interface MemberUpdateService {

	public MemberUpdateDto getMemberInfo(String memberEmail);

	public int memberUpdate(MemberDto memberDto);

	public int memberDelete(MemberDto memberDto);
	
}
