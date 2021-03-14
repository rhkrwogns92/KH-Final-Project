package kr.iei.hotel.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberLoginService;

@Controller
public class MemberLoginController {
	
	/*
	 * 1순위 : 관련 컨트롤러에 맵핑된 주소
	 * 2순위 : resource/static
	 */
	
	@Autowired
	private MemberLoginService memberLoginService;
	
	// loginPage
	@GetMapping("/login")
	public String loginPage() {
		return "/member/login";	
	}

	@PostMapping("/login")
	public String emailLoginPage(String memberEmail, Model model) {
		model.addAttribute("memberEmail", memberEmail);
		return "/member/login";
	}
	
	@GetMapping("/loginFailure")
	public String loginFailure(Model model) {
		model.addAttribute("loginFailure", true);
		return "/member/login";		
	}
	
	@GetMapping("/changePw")
	public String changePw() {
		return "/myPage/updateMember";
	}
	
	@GetMapping("/changePwLater")
	public String changePwLater() {
		memberLoginService.updatePwChangeDate();
		return "redirect:/";
	}
	
	
	@GetMapping("/login/oAuth2")
	public String oAuth2Login(@AuthenticationPrincipal PrincipalDetails userDetails, HttpSession oAuth2Session) {
		MemberDto memberDto = userDetails.getMemberDto();
		if(memberDto.getMemberRole().equals("ROLE_ASSOCIATE")) {
			oAuth2Session.setAttribute("email", new String(memberDto.getMemberEmail()));
			oAuth2Session.setAttribute("key", new String(memberDto.getMemberKey()));
			SecurityContextHolder.clearContext();
			return "redirect:/join/oAuth2";
		} else {
			return "redirect:/";
		}
	}
}
