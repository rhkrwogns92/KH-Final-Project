package kr.iei.hotel.memberUpdate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.memberUpdate.dto.MemberUpdateDto;
import kr.iei.hotel.memberUpdate.mapper.MemberUpdateMapper;

@Service
public class MemberUpdateServiceImpl implements MemberUpdateService {
	
	@Autowired
	private MemberUpdateMapper memberUpdateMapper;
	
	@Override
	public MemberUpdateDto getMemberInfo(String memberEmail) {		
		return memberUpdateMapper.getMemberInfo(memberEmail);
	}

	@Override
	public int memberUpdate(MemberDto memberDto) {
		return memberUpdateMapper.memberUpdate(memberDto);
	}

	@Override
	public int memberDelete(MemberDto memberDto) {
		return memberUpdateMapper.memberDelete(memberDto);
	}

	
}
