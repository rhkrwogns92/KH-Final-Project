package kr.iei.hotel.member.service;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.config.auth.PrincipalDetailsService;
import kr.iei.hotel.member.dao.MemberUpdateDao;
import kr.iei.hotel.member.dto.MemberDto;

@Service
public class MemberLoginServiceImp implements MemberLoginService {
	
	@Autowired
	private PrincipalDetailsService principalDetailsService;
	
	@Autowired
	private MemberUpdateDao memberLoginDao;
	
	@Autowired
	private MemberGetDtoService memberGetDtoService;
	
	@Override
	public void autoLogin(MemberDto memberDto) {
		UserDetails userDetails = principalDetailsService.loadUserByUsername(memberDto.getMemberEmail());
		Collection<GrantedAuthority> authorities = getAuthorities(memberDto.getMemberRole());
		Authentication newAuthentication = new UsernamePasswordAuthenticationToken(userDetails, null, authorities);
		SecurityContextHolder.getContext().setAuthentication(newAuthentication);		
	}
	
	public Collection<GrantedAuthority> getAuthorities(String... authorities) {
		Collection<GrantedAuthority> grantedAuthorities = new ArrayList<>();
		for(String authority : authorities)
			grantedAuthorities.add(() -> authority);
		return grantedAuthorities;
	}
	
	@Override
	public MemberDto getSessionMemberDto() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();
		return principalDetails.getMemberDto();
	}
	
	@Override
	public void updatePwChangeDate() {
		MemberDto memberDto = getSessionMemberDto();
		memberLoginDao.updatePwChangeDate(memberDto.getMemberEmail());
		memberDto = memberGetDtoService.getMemberDtoByEmail(memberDto.getMemberEmail());
		autoLogin(memberDto);
	}
}
