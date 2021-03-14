package kr.iei.hotel.adminMember.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.adminMember.service.AdminMemberService;
import kr.iei.hotel.memberUpdate.service.MemberUpdateService;
import kr.iei.hotel.notice.vo.Page;

/**
 * 
 * 관리자 페이지 - 회원 관리
 *
 */
@Controller
public class AdminMemberController {
	
	@Autowired
	AdminMemberService adminMemberService;
	
	
	/**
	 * 회원관리 컨트롤
	 * adminMemberList
	 * method= {RequestMethod.GET, RequestMethod.POST}  생략시  기본값  GET 또는 POST 가능
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/adminMemberList")
	public String adminMemberList(Page page, Model model) {
		System.out.println("------------------------------------------");
		System.out.println("관리자 페이지 (회원 관리)- 메서드 : adminMemberList ");							
		
		Map<String, Object> map = adminMemberService.adminMemberList(page);
		//adminMemberList 에 반환 된 map 데이터를  map 이라는  임의의  변수이름으로  Model 데이터를 넣는다.
		model.addAttribute("map",map); 
		return "memberAdmin/adminMemberList";			
	}

	/**
	 * 회원등급상태 업데이트 처리	 * 
	 * HashMap 으로 파라미터 값을 받는다.
	 * @param map
	 * @return
	 */
	@ResponseBody
	@PostMapping(value="/memberGradeUpdate")
	public String memberGradeUpdate(@RequestParam HashMap<String, Object> map) {
		System.out.println("------------------------------------------");
		System.out.println("관리자 페이지 (회원등급 업데이트 처리)- 메서드 : memberGradeUpdate ");
		System.out.println("파라미터 값: "+map.toString());	
		
		int updateState=adminMemberService.memberGradeUpdate(map);
		if(updateState==0){
			return "error";
		}		
		return "success";			
	}

	
	
	
	
	
	
	
}
