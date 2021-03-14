package kr.iei.hotel.reservation.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.iei.hotel.guestroom.service.GuestRoomService;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;
import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.reservation.service.ReservationService;
import kr.iei.hotel.reservation.vo.ReservationVO;


@Controller
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@Autowired
	ReservationService reservationService;
	@Autowired
	GuestRoomService guestRoomService;
	
	
	//-------------------------------------Admin--------------------------------------------
	//관리자 예약 관리 뷰
	@RequestMapping(value = "/reservationAdminListView", method = RequestMethod.GET)
	public String reservationAdminList(Model model, ReservationVO reservationVO)throws Exception {
		
		logger.info("관리자 리스트 뷰");
		model.addAttribute("list", reservationService.reservationAdminList(reservationVO.getNumber1()));
		return "/reservationAdmin/reservationAdminListView";
				
	}
	//관리자 예약 삭제 처리
	@RequestMapping(value = "/reservationAdminDelete", method = RequestMethod.GET)
	public String reservationAdminDelete(String reservationNo)throws Exception {
		
		logger.info("관리자 예약 삭제 처리");
		reservationService.reservationAdminDelete(reservationNo);
		return "redirect:/reservationAdminListView";
		
	}
	//관리자 예약 검색 처리
	@RequestMapping(value = "/reservationAdminSearch", method = {RequestMethod.GET,RequestMethod.POST})
	public String reservationAdminSearch(String reservationNo, Model model)throws Exception {
		
		logger.info("관리자 예약 검색 처리");
		model.addAttribute("list", reservationService.reservationAdminSearch(reservationNo));
		return "/reservationAdmin/reservationAdminListView";
		
		
	}
	
	//-------------------------------------User--------------------------------------------
	//예약 뷰1
	@RequestMapping(value = "/reservationView1", method = {RequestMethod.GET,RequestMethod.POST})
	public String reservationView1(Model model, ReservationVO reservationVO, HttpServletResponse response)throws Exception {
	
		logger.info("예약 뷰1");
		final int standardNumber = 1;
		List<GuestRoomVO> guestRoomList = new ArrayList<GuestRoomVO>();
		guestRoomList = guestRoomService.guestRoomList(standardNumber);
		for(int index = 0; index < guestRoomList.size(); index++) {
		System.out.println(guestRoomList.get(index).getGuestRoomName());
		}
		model.addAttribute("grList", guestRoomList);
		return "reservation/reservationView1";
		
	}
	
	
	//예약 뷰2
	@RequestMapping(value = "/reservationView2", method = {RequestMethod.GET,RequestMethod.POST})
	public String reservationView2(ReservationVO reservationVO, Model model, HttpServletResponse response, @AuthenticationPrincipal PrincipalDetails memberDetail)throws Exception {
		
		logger.info("예약 뷰2");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		//
		
		if(reservationVO.getGuestRoomNo() == 0){
			out.println("<script>alert('아래에 객실을 선택해주세요.'); location.href='/reservationView1';</script>");
			out.flush();

		}else {
		//UUID 사용하여 고유키 셋팅
		reservationVO.setReservationNo(UUID.randomUUID().toString());
		//회원 이름 id 셋팅
		reservationVO.setMemberName(memberDetail.getName());
		reservationVO.setMemberNumber(memberDetail.getMemberDto().getMemberNumber());
		model.addAttribute("reservationInfo", reservationVO);
		}
		return "reservation/reservationView2";
		
	}
	
	
	//예약 뷰3
	@RequestMapping(value = "/reservationView3", method = RequestMethod.GET)
	public String reservationView3()throws Exception {
		
		logger.info("예약 뷰3");
		return "reservation/reservationView3";
		
	}
	
	
	//예약 insert
	@RequestMapping(value = "/reservationInsertProcess", method = RequestMethod.POST)
	public String reservationInsertProcess(ReservationVO reservationVO)throws Exception {
		
		logger.info("예약 insert 처리");
		reservationService.reservationInsertProcess(reservationVO);
		return "redirect:/reservationView3";
		
	}
	
	
	//예약 처리
	@RequestMapping(value = "/reservationSearchProcess", method = {RequestMethod.POST,RequestMethod.GET})
	public String reservationSearchProcess(ReservationVO reservationVO, Model model, HttpServletResponse response,@AuthenticationPrincipal PrincipalDetails memberDetail)throws Exception {
		
		logger.info("예약 검색 처리");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//인원 선택 체크
		if(reservationVO.getAdult() == 0) {
			out.println("<script>alert('인원 선택 오류.'); location.href='/reservationView1';</script>");
			out.flush();

		}
		
		
		//체크아웃이 체크인보다 높거나 체크인 체크아웃 값이 같은 경우 처리
		if(reservationVO.getCheckIn() >= reservationVO.getCheckOut()) {
			out.println("<script>alert('날짜 선택을 잘못하셨습니다.'); location.href='/reservationView1';</script>");
			out.flush();

		}
		
		
		int reservationCount = reservationService.selectReservationCount(reservationVO);
		int guestRoomInfoCount = reservationService.selectGuestRoomInfoCount(reservationVO);

		//조회하여 객실이 존재하지 않다는 처리
		if(reservationCount >= guestRoomInfoCount) {
			out.println("<script>alert('선택한 날짜에 객실이 없거나 객실 선택 안하셨네요.'); location.href='/reservationView1';</script>");
	        out.flush();

		}
		
		
		//객실 남은방
		reservationVO.setGuestRoomRemaining(guestRoomInfoCount - reservationCount);
		//숙박 기간
		reservationVO.setLodgmentPeriod(reservationVO.getCheckOut() - reservationVO.getCheckIn());
		
		
		//예약기간이 30일 이상이면 예약 못하게 처리
		if(reservationVO.getLodgmentPeriod() >= 30) {
			System.out.println(reservationVO.getCheckIn());
			System.out.println(reservationVO.getCheckOut());
			System.out.println(reservationVO.getLodgmentPeriod());
			out.println("<script>alert('예약기간은 한달 이상 불가합니다.'); location.href='/reservationView1';</script>");
	        out.flush();

		}
		
		
		//기준이되는 객실 정보들을 먼저 셋팅한다
		GuestRoomVO guestRoomVO = new GuestRoomVO();
		List<GuestRoomVO> guestRoomVOList = new ArrayList<>();
		guestRoomVOList = reservationService.selectGuestRoomInfoList(reservationVO);
		guestRoomVO = guestRoomVOList.get(0);
		model.addAttribute("guestRoom", guestRoomVO);
		
		
		
		int standardPersonnelProcess = guestRoomVO.getStandardPersonnel();
		int adultProcess = reservationVO.getAdult();
		int childProcess = reservationVO.getChild();
		int adultCountProcess;
		int childCountProcess;
		
		// 기준인원을 넘어선 성인을 우선으로 두고 추가금 개수를 구하는 것
		if(standardPersonnelProcess < adultProcess) {
			adultCountProcess = adultProcess - standardPersonnelProcess;
			childCountProcess = childProcess;
		} else {
			standardPersonnelProcess = standardPersonnelProcess - adultProcess;
			adultCountProcess = 0;
			if(standardPersonnelProcess < childProcess) {
				childCountProcess = childProcess - standardPersonnelProcess;
				standardPersonnelProcess = standardPersonnelProcess + adultProcess;
			} else {
				childCountProcess = 0;
				standardPersonnelProcess = standardPersonnelProcess + adultProcess;
			}
		}
		reservationVO.setAdultCount(adultCountProcess);
		reservationVO.setChildCount(childCountProcess);
		
		
		
		List<Integer> guestRoomNumberList = new ArrayList<>();
		guestRoomNumberList = reservationService.reservationGuestRoomNumberList(reservationVO);
		
		//예약 되어있지 않은 객실 호수 번호 + 정보를 구해온다 
		for(int index1 = 0; index1 < guestRoomVOList.size(); index1++) {
			guestRoomVO = guestRoomVOList.get(index1);
			for(int index2 = 0; index2 < guestRoomNumberList.size(); index2++) {
				if(guestRoomVO.getGuestRoomNo() == guestRoomNumberList.get(index2)) {
					guestRoomVOList.remove(index1);
					index1--;
				}
			}
		}
		model.addAttribute("guestRoomInfoList", guestRoomVOList);
		
		
		
		
		//구해온 정보들로 예약한 객실에 대한 총금액을 가져온다
		for(int index = 0; index < reservationVO.getLodgmentPeriod(); index++) {
			reservationVO.setTotalPrice(reservationVO.getTotalPrice() + guestRoomVO.getGuestRoomPrice());
		}
		for(int index = 0; index < reservationVO.getAdultCount(); index++) {
			reservationVO.setTotalPrice(reservationVO.getTotalPrice() + guestRoomVO.getAdultPrice());
		}
		for(int index = 0; index < reservationVO.getChildCount(); index++) {
			reservationVO.setTotalPrice(reservationVO.getTotalPrice() + guestRoomVO.getChildPrice());
		}
		
		System.out.println("총금액 : " + reservationVO.getTotalPrice());
		String discountTrue = "30% 할인";
		String discountFalse = "없음";
		String membership = "GRADE_MEMBERSHIP";
		String general = "GRADE_GENERAL";
		//회원등급에 의한 할인 처리
		reservationVO.setMemberGrade(memberDetail.getGrade());
		System.out.println("회원등급 : " + reservationVO.getMemberGrade());
		if(reservationVO.getMemberGrade().equals(membership)) {
			int beforeTotalPrice = reservationVO.getTotalPrice();
			model.addAttribute("beforeTotalPrice", beforeTotalPrice);
			double discount = reservationService.selectMemberGrade(reservationVO.getMemberGrade());
			System.out.println("가져온할인율 : " + discount);
			double totalPrice = reservationVO.getTotalPrice() - reservationVO.getTotalPrice()*discount;
			int totalPrice2 = (int)totalPrice;
			
			reservationVO.setTotalPrice(totalPrice2);
			reservationVO.setDiscount(discountTrue);
			System.out.println("할인 : " + reservationVO.getDiscount());
			System.out.println("할인이 들어간 총 금액 : " + reservationVO.getTotalPrice());
		} else if(reservationVO.getMemberGrade().equals(general)) {
			reservationVO.setDiscount(discountFalse);
			System.out.println("할인 : " + reservationVO.getDiscount());
		}
		model.addAttribute("reservationInfo", reservationVO);
		
		
		
		return "forward:/reservationView1";
	}
}
