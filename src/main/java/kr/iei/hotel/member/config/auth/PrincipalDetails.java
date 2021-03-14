package kr.iei.hotel.member.config.auth;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import kr.iei.hotel.member.dto.MemberDto;

// '/login'호출시 여기서 진행
// 로그인 완료시 시큐리티 세션 생성(Security ContextHolder)
// Authentication 타입 객체(세션에 저장될 오브젝트) -> Member정보

@SuppressWarnings("serial")	// 원래 SerialVersionUID를 선언해서 warnings를 없애야 함
public class PrincipalDetails implements UserDetails, OAuth2User {

	private MemberDto memberDto;
	private Map<String, Object> attributes;

	// 일반 로그인
	public PrincipalDetails(MemberDto memberDto) {
		this.memberDto = memberDto;
	}
	
	public MemberDto getMemberDto() {
		return memberDto;
	}
	
	// OAuth 로그인
	public PrincipalDetails(MemberDto memberDto, Map<String, Object> attributes) {
		this.memberDto = memberDto;
		this.attributes = attributes;
	}
	
	// 권한 (원래 권한이 여러개 있을 수 있으므로 Collection 루프 돌려야 함)
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority> authorities = new ArrayList<>();
//		collect.add(new GrantedAuthority() {
//			@Override
//			public String getAuthority() {
//				return memberDto.getMemberRole();	// "ROLE_" + @가 되어야 함
//			}
//		});
		authorities.add( () -> { return memberDto.getMemberRole();});
		return authorities;
	}

	// 권한 (String)
	public String getRole() {
		return memberDto.getMemberRole();
	}
	
	// 일련번호
	public Long getNumber() {
		return memberDto.getMemberNumber();
	}
	
	// 아이디
	@Override
	public String getUsername() {
		return memberDto.getMemberEmail();
	}

	// 이름
	@Override
	public String getName() {
		return memberDto.getMemberName();
	}
	
	// 닉네임
	public String getNick() {
		return memberDto.getMemberNick();
	}
	
	// 비밀번호
	@Override
	public String getPassword() {
		return memberDto.getMemberPassword();
	}

	// 등급
	public String getGrade() {
		return memberDto.getMemberGrade();
	}
	
	// 전화번호
	public String getPhone() {
		return memberDto.getMemberPhone();
	}

	// 변경 권장 기간 내 비밀번호 변경 여부
	public boolean getIsPwChanged() {
		boolean result = true;
		if (memberDto.getMemberPwChangeDate() != null) {
			Date pwChangeDate = memberDto.getMemberPwChangeDate();
			Calendar baseDate = Calendar.getInstance();
			baseDate.setTime(new Date());
			baseDate.add(Calendar.DATE, -90);
			result =  pwChangeDate.after(baseDate.getTime());
		}
		return result;	// true : 변경 불필요, false : 변경 필요
	}
	
	// 계정 만료(false) 여부
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	// 계정 정지(false) 여부
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	// 계정 신용(false) 여부
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	// 계정 활성(false) 여부 (예 : 최종 로그인 후 일정기간 경과 여부 -> 휴면계정)
	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public Map<String, Object> getAttributes() {
		return attributes;
	}
	
}
