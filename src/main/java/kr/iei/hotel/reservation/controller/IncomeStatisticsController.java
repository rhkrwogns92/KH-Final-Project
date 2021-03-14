package kr.iei.hotel.reservation.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.iei.hotel.reservation.service.ReservationService;
import kr.iei.hotel.reservation.vo.IncomeStatisticsVO;

@Controller
public class IncomeStatisticsController {

	private static final Logger logger = LoggerFactory.getLogger(IncomeStatisticsController.class);
	
	@Autowired
	ReservationService reservationService;
	
	//main
	@RequestMapping(value = "/incomeStatisticsMain", method = RequestMethod.GET)
	public String incomeStatisticsMain()throws Exception {
		
		logger.info("수입통계 메인");
		return "/incomestatisticsAdmin/incomeStatisticsMain";
		
	}
	
	//일별통계1
	@RequestMapping(value = "/dailyStatistics1", method = RequestMethod.POST)
	public String dailyStatistics1(IncomeStatisticsVO incomeStatisticsVO, Model model)throws Exception {
		
		logger.info("일별통계 처리1");
		
		//요청해온 년도 SET
		incomeStatisticsVO.setJanuary(incomeStatisticsVO.getJanuary()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setFebruary(incomeStatisticsVO.getFebruary()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setMarch(incomeStatisticsVO.getMarch()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setApril(incomeStatisticsVO.getApril()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setMay(incomeStatisticsVO.getMay()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setJune(incomeStatisticsVO.getJune()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setJuly(incomeStatisticsVO.getJuly()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setAugust(incomeStatisticsVO.getAugust()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setSeptember(incomeStatisticsVO.getSeptember()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setOctober(incomeStatisticsVO.getOctober()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setNovember(incomeStatisticsVO.getNovember()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDecember(incomeStatisticsVO.getDecember()+incomeStatisticsVO.getChoiceYear());
		
		incomeStatisticsVO.setSelectDate(incomeStatisticsVO.getChoiceYear());
		
		//확인
		System.out.println("1월 : "+incomeStatisticsVO.getJanuary());
		System.out.println("2월 : "+incomeStatisticsVO.getFebruary());
		System.out.println("3월 : "+incomeStatisticsVO.getMarch());
		System.out.println("4월 : "+incomeStatisticsVO.getApril());
		System.out.println("5월 : "+incomeStatisticsVO.getMay());
		System.out.println("6월 : "+incomeStatisticsVO.getJune());
		System.out.println("7월 : "+incomeStatisticsVO.getJuly());
		System.out.println("8월 : "+incomeStatisticsVO.getAugust());
		System.out.println("9월 : "+incomeStatisticsVO.getSeptember());
		System.out.println("10월 : "+incomeStatisticsVO.getOctober());
		System.out.println("11월 : "+incomeStatisticsVO.getNovember());
		System.out.println("12월 : "+incomeStatisticsVO.getDecember());
		//응답
		model.addAttribute("date", incomeStatisticsVO);
		
		return "/incomestatisticsAdmin/dailyStatistics";
		
	}
	//일별통계2
	@RequestMapping(value = "/dailyStatistics2", method= RequestMethod.POST)
	public String dailyStatistics2(IncomeStatisticsVO incomeStatisticsVO, Model model)throws Exception {
		
		System.out.println(incomeStatisticsVO.getChoiceDate());
		
		
		logger.info("일별통계 처리2");
		// Average를 구하기 위한 변수들
		int totalCount = 0;
		
		//요청해온 년도 SET
		incomeStatisticsVO.setJanuary(incomeStatisticsVO.getJanuary()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setFebruary(incomeStatisticsVO.getFebruary()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setMarch(incomeStatisticsVO.getMarch()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setApril(incomeStatisticsVO.getApril()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setMay(incomeStatisticsVO.getMay()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setJune(incomeStatisticsVO.getJune()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setJuly(incomeStatisticsVO.getJuly()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setAugust(incomeStatisticsVO.getAugust()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setSeptember(incomeStatisticsVO.getSeptember()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setOctober(incomeStatisticsVO.getOctober()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setNovember(incomeStatisticsVO.getNovember()+incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDecember(incomeStatisticsVO.getDecember()+incomeStatisticsVO.getChoiceYear());
		
		
		
		
		
//		List<IncomeStatisticsVO> incomeList = new ArrayList<IncomeStatisticsVO>();
		//price
		List<Long> monthlyTotalPriceList = new ArrayList<Long>();
		List<Long> monthlyStandardPriceList = new ArrayList<Long>();
		List<Long> monthlySuperiorPriceList = new ArrayList<Long>();
		List<Long> monthlyDeluxePriceList = new ArrayList<Long>();
		List<Long> monthlyRoyalPriceList = new ArrayList<Long>();
		//count
		List<Integer> monthlyTotalCountList = new ArrayList<Integer>();
		List<Integer> monthlyStandardCountList = new ArrayList<Integer>();
		List<Integer> monthlySuperiorCountList = new ArrayList<Integer>();
		List<Integer> monthlyDeluxeCountList = new ArrayList<Integer>();
		List<Integer> monthlyRoyalCountList = new ArrayList<Integer>();				

		
		//요청해온 월 SET
		incomeStatisticsVO.setDay1(incomeStatisticsVO.getDay1()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay2(incomeStatisticsVO.getDay2()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay3(incomeStatisticsVO.getDay3()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay4(incomeStatisticsVO.getDay4()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay5(incomeStatisticsVO.getDay5()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay6(incomeStatisticsVO.getDay6()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay7(incomeStatisticsVO.getDay7()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay8(incomeStatisticsVO.getDay8()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay9(incomeStatisticsVO.getDay9()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay10(incomeStatisticsVO.getDay10()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay11(incomeStatisticsVO.getDay11()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay12(incomeStatisticsVO.getDay12()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay13(incomeStatisticsVO.getDay13()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay14(incomeStatisticsVO.getDay14()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay15(incomeStatisticsVO.getDay15()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay16(incomeStatisticsVO.getDay16()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay17(incomeStatisticsVO.getDay17()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay18(incomeStatisticsVO.getDay18()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay19(incomeStatisticsVO.getDay19()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay20(incomeStatisticsVO.getDay20()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay21(incomeStatisticsVO.getDay21()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay22(incomeStatisticsVO.getDay22()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay23(incomeStatisticsVO.getDay23()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay24(incomeStatisticsVO.getDay24()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay25(incomeStatisticsVO.getDay25()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay26(incomeStatisticsVO.getDay26()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay27(incomeStatisticsVO.getDay27()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay28(incomeStatisticsVO.getDay28()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay29(incomeStatisticsVO.getDay29()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay30(incomeStatisticsVO.getDay30()+incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay31(incomeStatisticsVO.getDay31()+incomeStatisticsVO.getChoiceDate());
		
		incomeStatisticsVO.setSelectDate(incomeStatisticsVO.getChoiceDate());

		//service
		monthlyTotalPriceList = reservationService.selectDailyTotalPrice(incomeStatisticsVO);
		monthlyTotalCountList = reservationService.selectDailyTotalCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getStandard());
		monthlyStandardPriceList = reservationService.selectDailyGuestRoomPrice(incomeStatisticsVO);
		monthlyStandardCountList = reservationService.selectDailyGuestRoomCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getSuperior());
		monthlySuperiorPriceList = reservationService.selectDailyGuestRoomPrice(incomeStatisticsVO);
		monthlySuperiorCountList = reservationService.selectDailyGuestRoomCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getDeluxe());
		monthlyDeluxePriceList = reservationService.selectDailyGuestRoomPrice(incomeStatisticsVO);
		monthlyDeluxeCountList = reservationService.selectDailyGuestRoomCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getRoyal());
		monthlyRoyalPriceList = reservationService.selectDailyGuestRoomPrice(incomeStatisticsVO);
		monthlyRoyalCountList = reservationService.selectDailyGuestRoomCount(incomeStatisticsVO);
		
		//레코드 확인
		System.out.println(monthlyTotalPriceList.size());
		
		// totalPrice/Count 확인 및 합집함 처리
		System.out.println("TotalPrice/Count");
		for(int index = 0; index < monthlyTotalPriceList.size(); index++) {
			System.out.println((index+1) + "일 통계 Price : " + monthlyTotalPriceList.get(index));
			System.out.println((index+1) + "일 통계 Count : " + monthlyTotalCountList.get(index));
			if(monthlyTotalCountList.get(index) != 0) {
			incomeStatisticsVO.setTotalSumPrice(incomeStatisticsVO.getTotalSumPrice()+monthlyTotalPriceList.get(index));
			incomeStatisticsVO.setTotalSumCount(incomeStatisticsVO.getTotalSumCount()+monthlyTotalCountList.get(index));
			totalCount++;
			}
		}
		// totalPrice/Count 평균 구하고 합집합/평균 확인
 		incomeStatisticsVO.setTotalAveragePrice(incomeStatisticsVO.getTotalSumPrice()/totalCount);
 		incomeStatisticsVO.setTotalAverageCount(incomeStatisticsVO.getTotalSumCount()/totalCount);
 		System.out.println("TotalSumPrice : " + incomeStatisticsVO.getTotalSumPrice());
 		System.out.println("TotalSumCount : " + incomeStatisticsVO.getTotalSumCount());
 		System.out.println("TotalAveragePrice : " + incomeStatisticsVO.getTotalAveragePrice());
 		System.out.println("TotalAverageCount : " + incomeStatisticsVO.getTotalAverageCount());
 		
		// 이제 이짓거리 객실별 반복 작업 시작
 		// 스탠다드
 		System.out.println("StandardPrice/Count");
 		for(int index = 0; index < monthlyStandardPriceList.size(); index++) {
 			System.out.println((index+1) + "일 통계 Price : " + monthlyStandardPriceList.get(index));
			System.out.println((index+1) + "일 통계 Count : " + monthlyStandardCountList.get(index));
			if(monthlyStandardCountList.get(index) != 0) {
 			incomeStatisticsVO.setStandardTotalPrice(incomeStatisticsVO.getStandardTotalPrice()+monthlyStandardPriceList.get(index));
 			incomeStatisticsVO.setStandardTotalCount(incomeStatisticsVO.getStandardTotalCount()+monthlyStandardCountList.get(index));

			}
 		}
 		incomeStatisticsVO.setStandardAveragePrice(incomeStatisticsVO.getStandardTotalPrice()/totalCount);
 		incomeStatisticsVO.setStandardAverageCount(incomeStatisticsVO.getStandardTotalCount()/totalCount);
 		System.out.println("StandardTotalPrice : " + incomeStatisticsVO.getStandardTotalPrice());
 		System.out.println("StandardTotalCount : " + incomeStatisticsVO.getStandardTotalCount());
 		System.out.println("StandardAveragePrice : " + incomeStatisticsVO.getStandardAveragePrice());
 		System.out.println("StandardAverageCount : " + incomeStatisticsVO.getStandardAverageCount());
 		
 		
 		//슈페리어
 		System.out.println("SuperiorPrice/Count");
 		for(int index = 0; index < monthlySuperiorPriceList.size(); index++) {
 			System.out.println((index+1) + "일 통계 Price : " + monthlySuperiorPriceList.get(index));
			System.out.println((index+1) + "일 통계 Count : " + monthlySuperiorCountList.get(index));
			if(monthlySuperiorCountList.get(index) != 0) {
 			incomeStatisticsVO.setSuperiorTotalPrice(incomeStatisticsVO.getSuperiorTotalPrice()+monthlySuperiorPriceList.get(index));
 			incomeStatisticsVO.setSuperiorTotalCount(incomeStatisticsVO.getSuperiorTotalCount()+monthlySuperiorCountList.get(index));
	
			}
 		}
 		incomeStatisticsVO.setSuperiorAveragePrice(incomeStatisticsVO.getSuperiorTotalPrice()/totalCount);
 		incomeStatisticsVO.setSuperiorAverageCount(incomeStatisticsVO.getSuperiorTotalCount()/totalCount);
 		System.out.println("SuperiorTotalPrice : " + incomeStatisticsVO.getSuperiorTotalPrice());
 		System.out.println("SuperiorTotalCount : " + incomeStatisticsVO.getSuperiorTotalCount());
 		System.out.println("SuperiorAveragePrice : " + incomeStatisticsVO.getSuperiorAveragePrice());
 		System.out.println("SuperiorAverageCount : " + incomeStatisticsVO.getSuperiorAverageCount());
 		
 		
 		//디럭스
 		System.out.println("DeluxePrice/Count");
 		for(int index = 0; index < monthlyDeluxePriceList.size(); index++) {
 			System.out.println((index+1) + "일 통계 Price : " + monthlyDeluxePriceList.get(index));
			System.out.println((index+1) + "일 통계 Count : " + monthlyDeluxeCountList.get(index));
			if(monthlyDeluxeCountList.get(index) != 0) {
 			incomeStatisticsVO.setDeluxeTotalPrice(incomeStatisticsVO.getDeluxeTotalPrice()+monthlyDeluxePriceList.get(index));
 			incomeStatisticsVO.setDeluxeTotalCount(incomeStatisticsVO.getDeluxeTotalCount()+monthlyDeluxeCountList.get(index));
	
			}
 		}
 		incomeStatisticsVO.setDeluxeAveragePrice(incomeStatisticsVO.getDeluxeTotalPrice()/totalCount);
 		incomeStatisticsVO.setDeluxeAverageCount(incomeStatisticsVO.getDeluxeTotalCount()/totalCount);
 		System.out.println("DeluxeTotalPrice : " + incomeStatisticsVO.getDeluxeTotalPrice());
 		System.out.println("DeluxeTotalCount : " + incomeStatisticsVO.getDeluxeTotalCount());
 		System.out.println("DeluxeAveragePrice : " + incomeStatisticsVO.getDeluxeAveragePrice());
 		System.out.println("DeluxeAverageCount : " + incomeStatisticsVO.getDeluxeAverageCount());
 		
 		
 		//로얄
 		System.out.println("RoyalPrice/Count");
 		for(int index = 0; index < monthlyRoyalPriceList.size(); index++) {
 			System.out.println((index+1) + "일 통계 Price : " + monthlyRoyalPriceList.get(index));
			System.out.println((index+1) + "일 통계 Count : " + monthlyRoyalCountList.get(index));
 			if(monthlyRoyalCountList.get(index) != 0) {
			incomeStatisticsVO.setRoyalTotalPrice(incomeStatisticsVO.getRoyalTotalPrice()+monthlyRoyalPriceList.get(index));
 			incomeStatisticsVO.setRoyalTotalCount(incomeStatisticsVO.getRoyalTotalCount()+monthlyRoyalCountList.get(index));
 	
 			}
 		}
 		incomeStatisticsVO.setRoyalAveragePrice(incomeStatisticsVO.getRoyalTotalPrice()/totalCount);
 		incomeStatisticsVO.setRoyalAverageCount(incomeStatisticsVO.getRoyalTotalCount()/totalCount);
 		System.out.println("RoyalTotalPrice : " + incomeStatisticsVO.getRoyalTotalPrice());
 		System.out.println("RoyalTotalCount : " + incomeStatisticsVO.getRoyalTotalCount());
 		System.out.println("RoyalAveragePrice : " + incomeStatisticsVO.getRoyalAveragePrice());
 		System.out.println("RoyalAverageCount : " + incomeStatisticsVO.getRoyalAverageCount());
 		
 		
// 		for(int index = 0; index < totalCount; index++) {
// 			incomeList.add(index, incomeStatisticsVO);
// 		}
 		
 		
 		
 		//이제 데이터를 뿌려보자
// 		model.addAttribute("incomeList", incomeList);
 		model.addAttribute("incomeStatistics", incomeStatisticsVO);
 		model.addAttribute("totalPriceList", monthlyTotalPriceList);
 		model.addAttribute("totalCountList", monthlyTotalCountList);
 		model.addAttribute("standardPriceList", monthlyStandardPriceList);
 		model.addAttribute("standardCountList", monthlyStandardCountList);
 		model.addAttribute("superiorPriceList", monthlySuperiorPriceList);
 		model.addAttribute("superiorCountList", monthlySuperiorCountList);
 		model.addAttribute("deluxePriceList", monthlyDeluxePriceList);
 		model.addAttribute("deluxeCountList", monthlyDeluxeCountList);
 		model.addAttribute("royalPriceList", monthlyRoyalPriceList);
 		model.addAttribute("royalCountList", monthlyRoyalCountList);
 		model.addAttribute("date", incomeStatisticsVO);
		
		return "/incomestatisticsAdmin/dailyStatistics";
	}
	
	
	
	
	//월별통계
	@RequestMapping(value = "/monthlyStatistics", method = RequestMethod.POST)
	public String monthlyStatistics(IncomeStatisticsVO incomeStatisticsVO, Model model)throws Exception {
		
		logger.info("월별통계 처리");
		//price
		List<Long> monthlyTotalPriceList = new ArrayList<Long>();
		List<Long> monthlyStandardPriceList = new ArrayList<Long>();
		List<Long> monthlySuperiorPriceList = new ArrayList<Long>();
		List<Long> monthlyDeluxePriceList = new ArrayList<Long>();
		List<Long> monthlyRoyalPriceList = new ArrayList<Long>();
		//count
		List<Integer> monthlyTotalCountList = new ArrayList<Integer>();
		List<Integer> monthlyStandardCountList = new ArrayList<Integer>();
		List<Integer> monthlySuperiorCountList = new ArrayList<Integer>();
		List<Integer> monthlyDeluxeCountList = new ArrayList<Integer>();
		List<Integer> monthlyRoyalCountList = new ArrayList<Integer>();
		
		//요청해온 년도SET
		incomeStatisticsVO.setDay1(incomeStatisticsVO.getDay1() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay2(incomeStatisticsVO.getDay2() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay3(incomeStatisticsVO.getDay3() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay4(incomeStatisticsVO.getDay4() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay5(incomeStatisticsVO.getDay5() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay6(incomeStatisticsVO.getDay6() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay7(incomeStatisticsVO.getDay7() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay8(incomeStatisticsVO.getDay8() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay9(incomeStatisticsVO.getDay9() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay10(incomeStatisticsVO.getDay10() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay11(incomeStatisticsVO.getDay11() + incomeStatisticsVO.getChoiceYear());
		incomeStatisticsVO.setDay12(incomeStatisticsVO.getDay12() + incomeStatisticsVO.getChoiceYear());
		
		incomeStatisticsVO.setSelectDate(incomeStatisticsVO.getChoiceYear());
		
		//service
		monthlyTotalPriceList = reservationService.selectMonthlyTotalPrice(incomeStatisticsVO);
		monthlyTotalCountList = reservationService.selectMonthlyTotalCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getStandard());
		monthlyStandardPriceList = reservationService.selectMonthlyGuestRoomPrice(incomeStatisticsVO);
		monthlyStandardCountList = reservationService.selectMonthlyGuestRoomCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getSuperior());
		monthlySuperiorPriceList = reservationService.selectMonthlyGuestRoomPrice(incomeStatisticsVO);
		monthlySuperiorCountList = reservationService.selectMonthlyGuestRoomCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getDeluxe());
		monthlyDeluxePriceList = reservationService.selectMonthlyGuestRoomPrice(incomeStatisticsVO);
		monthlyDeluxeCountList = reservationService.selectMonthlyGuestRoomCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getRoyal());
		monthlyRoyalPriceList = reservationService.selectMonthlyGuestRoomPrice(incomeStatisticsVO);
		monthlyRoyalCountList = reservationService.selectMonthlyGuestRoomCount(incomeStatisticsVO);
		
		
		// totalPrice/Count 확인 및 합집함 처리
		System.out.println("TotalPrice/Count");
		for(int index = 0; index < monthlyTotalPriceList.size(); index++) {
			System.out.println((index+1) + "월 통계 Price : " + monthlyTotalPriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlyTotalCountList.get(index));
			incomeStatisticsVO.setTotalSumPrice(incomeStatisticsVO.getTotalSumPrice()+monthlyTotalPriceList.get(index));
			incomeStatisticsVO.setTotalSumCount(incomeStatisticsVO.getTotalSumCount()+monthlyTotalCountList.get(index));
		}
		// totalPrice/Count 평균 구하고 합집합/평균 확인
 		incomeStatisticsVO.setTotalAveragePrice(incomeStatisticsVO.getTotalSumPrice()/monthlyTotalPriceList.size());
 		incomeStatisticsVO.setTotalAverageCount(incomeStatisticsVO.getTotalSumCount()/monthlyTotalPriceList.size());
 		System.out.println("TotalSumPrice : " + incomeStatisticsVO.getTotalSumPrice());
 		System.out.println("TotalSumCount : " + incomeStatisticsVO.getTotalSumCount());
 		System.out.println("TotalAveragePrice : " + incomeStatisticsVO.getTotalAveragePrice());
 		System.out.println("TotalAverageCount : " + incomeStatisticsVO.getTotalAverageCount());
 		
		// 이제 이짓거리 객실별 반복 작업 시작
 		// 스탠다드
 		System.out.println("StandardPrice/Count");
 		for(int index = 0; index < monthlyStandardPriceList.size(); index++) {
 			System.out.println((index+1) + "월 통계 Price : " + monthlyStandardPriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlyStandardCountList.get(index));
 			incomeStatisticsVO.setStandardTotalPrice(incomeStatisticsVO.getStandardTotalPrice()+monthlyStandardPriceList.get(index));
 			incomeStatisticsVO.setStandardTotalCount(incomeStatisticsVO.getStandardTotalCount()+monthlyStandardCountList.get(index));
 		}
 		incomeStatisticsVO.setStandardAveragePrice(incomeStatisticsVO.getStandardTotalPrice()/monthlyStandardPriceList.size());
 		incomeStatisticsVO.setStandardAverageCount(incomeStatisticsVO.getStandardTotalCount()/monthlyStandardPriceList.size());
 		System.out.println("StandardTotalPrice : " + incomeStatisticsVO.getStandardTotalPrice());
 		System.out.println("StandardTotalCount : " + incomeStatisticsVO.getStandardTotalCount());
 		System.out.println("StandardAveragePrice : " + incomeStatisticsVO.getStandardAveragePrice());
 		System.out.println("StandardAverageCount : " + incomeStatisticsVO.getStandardAverageCount());
 		
 		
 		//슈페리어
 		System.out.println("SuperiorPrice/Count");
 		for(int index = 0; index < monthlySuperiorPriceList.size(); index++) {
 			System.out.println((index+1) + "월 통계 Price : " + monthlySuperiorPriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlySuperiorCountList.get(index));
 			incomeStatisticsVO.setSuperiorTotalPrice(incomeStatisticsVO.getSuperiorTotalPrice()+monthlySuperiorPriceList.get(index));
 			incomeStatisticsVO.setSuperiorTotalCount(incomeStatisticsVO.getSuperiorTotalCount()+monthlySuperiorCountList.get(index));
 		}
 		incomeStatisticsVO.setSuperiorAveragePrice(incomeStatisticsVO.getSuperiorTotalPrice()/monthlySuperiorPriceList.size());
 		incomeStatisticsVO.setSuperiorAverageCount(incomeStatisticsVO.getSuperiorTotalCount()/monthlySuperiorPriceList.size());
 		System.out.println("SuperiorTotalPrice : " + incomeStatisticsVO.getSuperiorTotalPrice());
 		System.out.println("SuperiorTotalCount : " + incomeStatisticsVO.getSuperiorTotalCount());
 		System.out.println("SuperiorAveragePrice : " + incomeStatisticsVO.getSuperiorAveragePrice());
 		System.out.println("SuperiorAverageCount : " + incomeStatisticsVO.getSuperiorAverageCount());
 		
 		
 		//디럭스
 		System.out.println("DeluxePrice/Count");
 		for(int index = 0; index < monthlyDeluxePriceList.size(); index++) {
 			System.out.println((index+1) + "월 통계 Price : " + monthlyDeluxePriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlyDeluxeCountList.get(index));
 			incomeStatisticsVO.setDeluxeTotalPrice(incomeStatisticsVO.getDeluxeTotalPrice()+monthlyDeluxePriceList.get(index));
 			incomeStatisticsVO.setDeluxeTotalCount(incomeStatisticsVO.getDeluxeTotalCount()+monthlyDeluxeCountList.get(index));
 		}
 		incomeStatisticsVO.setDeluxeAveragePrice(incomeStatisticsVO.getDeluxeTotalPrice()/monthlyDeluxePriceList.size());
 		incomeStatisticsVO.setDeluxeAverageCount(incomeStatisticsVO.getDeluxeTotalCount()/monthlyDeluxePriceList.size());
 		System.out.println("DeluxeTotalPrice : " + incomeStatisticsVO.getDeluxeTotalPrice());
 		System.out.println("DeluxeTotalCount : " + incomeStatisticsVO.getDeluxeTotalCount());
 		System.out.println("DeluxeAveragePrice : " + incomeStatisticsVO.getDeluxeAveragePrice());
 		System.out.println("DeluxeAverageCount : " + incomeStatisticsVO.getDeluxeAverageCount());
 		
 		
 		//로얄
 		System.out.println("RoyalPrice/Count");
 		for(int index = 0; index < monthlyRoyalPriceList.size(); index++) {
 			System.out.println((index+1) + "월 통계 Price : " + monthlyRoyalPriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlyRoyalCountList.get(index));
 			incomeStatisticsVO.setRoyalTotalPrice(incomeStatisticsVO.getRoyalTotalPrice()+monthlyRoyalPriceList.get(index));
 			incomeStatisticsVO.setRoyalTotalCount(incomeStatisticsVO.getRoyalTotalCount()+monthlyRoyalCountList.get(index));
 		}
 		incomeStatisticsVO.setRoyalAveragePrice(incomeStatisticsVO.getRoyalTotalPrice()/monthlyRoyalPriceList.size());
 		incomeStatisticsVO.setRoyalAverageCount(incomeStatisticsVO.getRoyalTotalCount()/monthlyRoyalPriceList.size());
 		System.out.println("RoyalTotalPrice : " + incomeStatisticsVO.getRoyalTotalPrice());
 		System.out.println("RoyalTotalCount : " + incomeStatisticsVO.getRoyalTotalCount());
 		System.out.println("RoyalAveragePrice : " + incomeStatisticsVO.getRoyalAveragePrice());
 		System.out.println("RoyalAverageCount : " + incomeStatisticsVO.getRoyalAverageCount());
 		
 		model.addAttribute("incomeStatistics", incomeStatisticsVO);
 		model.addAttribute("totalPriceList", monthlyTotalPriceList);
 		model.addAttribute("totalCountList", monthlyTotalCountList);
 		model.addAttribute("standardPriceList", monthlyStandardPriceList);
 		model.addAttribute("standardCountList", monthlyStandardCountList);
 		model.addAttribute("superiorPriceList", monthlySuperiorPriceList);
 		model.addAttribute("superiorCountList", monthlySuperiorCountList);
 		model.addAttribute("deluxePriceList", monthlyDeluxePriceList);
 		model.addAttribute("deluxeCountList", monthlyDeluxeCountList);
 		model.addAttribute("royalPriceList", monthlyRoyalPriceList);
 		model.addAttribute("royalCountList", monthlyRoyalCountList);
 		model.addAttribute("date", incomeStatisticsVO);
		
		return "/incomestatisticsAdmin/monthlyStatistics";
	
	}
	
}
