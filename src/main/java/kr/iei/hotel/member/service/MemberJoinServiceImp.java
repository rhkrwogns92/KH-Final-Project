package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberJoinDao;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;

@Service
public class MemberJoinServiceImp implements MemberJoinService {

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private MemberJoinDao memberJoinDao;
	
	@Autowired
	private MemberLoginService memberLoginService;
	
	@Autowired
	private MemberGetDtoService memberGetDtoService;
	
	@Override
	public void join(MemberJoinFormDto memberJoinFormDto) {
		if(memberJoinFormDto.getMemberPassword() != null && memberJoinFormDto.getMemberKey() == null) {
			String password = passwordEncode(memberJoinFormDto.getMemberPassword());
			memberJoinFormDto.setMemberPassword(password);
		}
		memberJoinDao.join(memberJoinFormDto);
		MemberDto memberDto = memberGetDtoService.getMemberDtoByEmail(memberJoinFormDto.getMemberEmail());
		memberLoginService.autoLogin(memberDto);
	}
	
	@Override
	public String passwordEncode(String memberPassword) {
		return passwordEncoder.encode(memberPassword);
	}
	
	@Override
	public int checkEmail(String memberEmail) {
		return memberJoinDao.checkEmail(memberEmail);
	}
	
	@Override
	public int checkNick(String memberNick) {
		return memberJoinDao.checkNick(memberNick);
	}
	
	@Override
	public void changePassword(String memberEmail, String password) {
		String memberPassword = passwordEncode(password);
		memberJoinDao.changePassword(memberPassword, memberEmail);
	}
	
	@Override
	public void addKey(String memberEmail, String memberKey) {
		memberJoinDao.addKey(memberEmail, memberKey);
		
	}
}
