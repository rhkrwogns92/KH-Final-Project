package kr.iei.hotel.member.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.config.auth.PrincipalDetails;

@Controller
public class Test {
	
	@GetMapping("/t")
	public String t() {
		return "/member/test";
	}
	
	@GetMapping("/test")
	@ResponseBody
	public Authentication test() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();
		principalDetails.getMemberDto();
		return authentication;
	}
	
	@GetMapping("/test0")
	@ResponseBody
	public String test0(Authentication authentication,
			@AuthenticationPrincipal PrincipalDetails userDetails,
			@AuthenticationPrincipal OAuth2User oAuth2user) {
		PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();
		OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
//		SecurityContextHolder.clearContext();
		return ("authentication : <br>" + authentication + "<br><br>"
				+ "authentication.getPrincipal() : <br>" + authentication.getPrincipal() + "<br><br>"
				+ "userDetails : <br>" + userDetails + "<br><br>"
				+ "userDetails.getMemberDto() : <br>" + userDetails.getMemberDto() + "<br><br>"
				+ "(PrincipalDetails) authentication.getPrincipal() : <br>" + principalDetails + "<br><br>"
				+ "(PrincipalDetails) authentication.getPrincipal().getMemberDto : <br>" + principalDetails.getMemberDto() + "<br><br>"
				+ "(OAuth2User) authentication.getPrincipal() : <br>" + oAuth2User + "<br><br>"
				+ "(OAuth2User) authentication.getPrincipal().getAttributes() : <br>" + oAuth2User.getAttributes()
				);
	}
	
	@GetMapping("/test1")
	@ResponseBody
	public String test1(Authentication authentication,
			@AuthenticationPrincipal PrincipalDetails userDetails) {
		System.out.println("/test 1===================");
		PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();
		System.out.println("authentication : " + principalDetails.getMemberDto());
		System.out.println("userDetails : " + userDetails.getMemberDto());
		return "세션 정보 확인하기";
	}
	
	@GetMapping("/test2")
	@ResponseBody
	public String test2(Authentication authentication,
			@AuthenticationPrincipal OAuth2User oAuth2user) {
		System.out.println("/test 2===================");
		OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
		System.out.println("authentication : " + oAuth2User.getAttributes());
		System.out.println("oauth2user : " + oAuth2user.getAttributes());
		return "OAuth 세션 정보 확인하기";
	}

	
}

// hughotel@gmail.com
