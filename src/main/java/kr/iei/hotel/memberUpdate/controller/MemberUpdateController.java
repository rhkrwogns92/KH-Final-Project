package kr.iei.hotel.memberUpdate.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberGetDtoService;
import kr.iei.hotel.member.service.MemberLoginService;
import kr.iei.hotel.member.service.MemberUnRegisterService;
import kr.iei.hotel.memberUpdate.dto.MemberUpdateDto;
import kr.iei.hotel.memberUpdate.service.MemberUpdateService;

/**
 * 
 * 회원정보수정 및 삭제
 *
 */
@Controller
public class MemberUpdateController {
	
	@Autowired
	MemberUpdateService memberUpdateService;
	
	@Autowired
	MemberUnRegisterService memberUnRegisterService;
	
	@Autowired
	MemberGetDtoService memberGetDtoService;
	
	@Autowired
	MemberLoginService memberLoginService;
	
    @Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
    /**
     * 회원정보수정 페이지
     * @param model
     * @return
     */
	@RequestMapping(value="/myPage")
	public String myPage(Model model) {
		try {
			System.out.println("회원정보수정  메서드 : myPage ");			 
			
			/**
			 * Spring Security에서는 SecurityContextHolder를 제공해 현재 세션의 사용자 정보를 가져올 수 있다.
			 */
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();		
			
			/**
			 * Authentication 객체의 getPrincipal() 메서드를 실행하게 되면, principalDetails를 구현한 사용자 객체를 Return 한다.
			 * UserDetails를 구현한 객체가 가지고 있는 정보들을 가져올 수 있다.
			 */
			PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();
			System.out.println("1.세션 데이터 getMemberDto 정보 :" +principalDetails.getMemberDto());
			System.out.println("2.세션 데이터 getUsername 정보 :  " +principalDetails.getUsername());
			
			MemberUpdateDto member=memberUpdateService.getMemberInfo(principalDetails.getUsername());
			System.out.println("3. 데이터베이스 가져온 회원 정보   :  " +member.toString());

			model.addAttribute("member", member);
		}catch (Exception e) {
			e.printStackTrace();
			return "redirect:/login";
		}

		return "myPage/updateMember";
	}

	
	 /**@RestController 는 해당 클래스 전체 적용  @ResponseBody 는 개별 메서드 적용
	  * @ResponseBody :
 	  * 자바 객체를 HTTP 응답 몸체로 전송함
 	  * 자바 객체를 HTTP 요청의 body 내용으로 매핑하는 역할
	  * ajax 의 형식의 비동기 식에서 json 반환에 사용한다.
	  * 
	  */
	@ResponseBody
    @PostMapping("/memberUpdate")
    public ResponseEntity<Boolean> memberUpdate(MemberDto memberDto, String oriPassword, @AuthenticationPrincipal PrincipalDetails userDetails, HttpSession session) {
    	System.out.println("회원정보수정  메서드 : memberUpdate ");
    	System.out.println("파라미터 값:" +memberDto.toString());
    	
    	/**세션에 저장된 아이디값 가져오기 */
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    	PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();
    	memberDto.setMemberEmail(principalDetails.getUsername());
    	
    	
    	/** 1)비밀번호 입력여부 확인 - 비밀번호가 입력되었을시 다음을 처리 */
    	if(memberDto.getMemberPassword()!=null && !memberDto.getMemberPassword().equals("")) {
    		
			/** 2)기존 사용중인 비밀번호 일치하는지 체크 */
    		if(!verify(oriPassword, userDetails)) {
                return new ResponseEntity<>(false, HttpStatus.UNAUTHORIZED);
            }    		
    		
    		/** 3)비밀번호 암호화 하기 */
    		String encPassword=passwordEncoder.encode(memberDto.getMemberPassword());
    		memberDto.setMemberPassword(encPassword);
    		System.out.println("비밀번호 암호화 처리 : "+ encPassword);    		
    	}
    	
    	/** 데이터베이스 회원 정보 업데이트 처리 */
    	int updateState=memberUpdateService.memberUpdate(memberDto);
    	
    	/** 정상적으로 업데이트 되었다면 1 을 반환 */
    	if(updateState == 0) {
    		/** 업데이트  오류 */
    		return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
    	}
    	memberDto = memberGetDtoService.getMemberDtoByEmail(userDetails.getUsername());
    	memberLoginService.autoLogin(memberDto);		
    	return new ResponseEntity<>(true, HttpStatus.OK);
    }
	
	
	/**
	 * 사용중인 비밀번호 체크
	 * @param oriPassword
	 * @param userDetails
	 * @return
	 */
	@ResponseBody
    @PostMapping("/oriPasswordConfirm")
    public ResponseEntity<Boolean> oriPasswordConfirm(String oriPassword, @AuthenticationPrincipal PrincipalDetails userDetails) {
    	System.out.println("비밀번호 확인  메서드 : oriPasswordConfirm ");
    	System.out.println("파라미터 값(oriPassword):" +oriPassword);
    	
    	if(!verify(oriPassword, userDetails)) {
    	 System.out.println("비밀번호가 일치하지 않습니다.");
         return new ResponseEntity<>(false, HttpStatus.UNAUTHORIZED);
    	} 
    	return new ResponseEntity<>(true, HttpStatus.OK);  
    }
	
	
	/**
	 * 회원 탈퇴 처리
	 * @param memberDto
	 * @param userDetails
	 * @return
	 */
	@ResponseBody
    @PostMapping("/memberDelete")
    public ResponseEntity<Boolean> memberDelete(MemberDto memberDto, String memberPasswordDelete,  @AuthenticationPrincipal PrincipalDetails userDetails) {
		System.out.println("회원 탈퇴 메서드 : memberUnRegisterService  : 입력한 비밀번호 - "+memberPasswordDelete);
		if(!verify(memberPasswordDelete, userDetails)) {
            return new ResponseEntity<>(false, HttpStatus.UNAUTHORIZED);
        } else {
        	//스프링 시큐리티 PrincipalDetails 세션값 아이디 가져오기
        	memberDto = memberGetDtoService.getMemberDtoByEmail(userDetails.getUsername());
        	memberUnRegisterService.deleteReply(memberDto);
        	int deleteState = memberUnRegisterService.unRegister(memberDto);
//        	int deleteState = memberUpdateService.memberDelete(memberDto);
        	/** 정상적으로 삭제 처리 되었다면 1 을 반환 */
        	if(deleteState == 0) {
        			/** 삭제  오류 */
	               return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
	        }
        }
        return new ResponseEntity<>(true, HttpStatus.OK);
    }
	

	/**
	 * 패스워드 검증 부분
	 * 다중 사용으로 함수로 생성
	 * @param oriPassword
	 * @param userDetails
	 * @return
	 */
   public Boolean verify(String oriPassword, PrincipalDetails userDetails) {
	    System.out.println("\n---------------------------------- ");
	    System.out.println("--- 패스워드 검증 --- ");
	    //데이터베이스에서 회원정보 가져오기
	    MemberUpdateDto member=memberUpdateService.getMemberInfo(userDetails.getUsername());	    
	    System.out.println("member.getMemberPassword() :  " +member.getMemberPassword());
	    	    
	    //비밀번호와 일치 확인	 
	    System.out.println("passwordEncoder.matches(oriPassword, member.getMemberPassword()) 결과값  =>"+passwordEncoder.matches(oriPassword, member.getMemberPassword()));
        return passwordEncoder.matches(oriPassword, member.getMemberPassword());
    }
    
   
   
   
   
	
}
