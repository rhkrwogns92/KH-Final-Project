package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberUpdateDao;
import kr.iei.hotel.member.dto.MemberDto;

@Service
public class MemberUnRegisterServiceImp implements MemberUnRegisterService {

	@Autowired
	MemberUpdateDao memberUpdateDao;
	
	@Override
	public void deleteReply(MemberDto memberDto) {
		memberUpdateDao.deleteReply(memberDto);
	}
	
	@Override
	public int unRegister(MemberDto memberDto) {
		return memberUpdateDao.unRegister(memberDto);
		
	}
}
