package kr.iei.hotel.faq.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.iei.hotel.faq.service.FaqService;
import kr.iei.hotel.faq.vo.FaqVo;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;

@RestController
public class FaqController {
	
	@Autowired
	FaqService service;
	
	// ────────────────────────────────────────────────── 사용자 ──────────────────────────────────────────────────
	/*--------------------------------- 전체조회 ---------------------------------*/
	@RequestMapping(value="/faqMain", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqMain(Page page) {
		ModelAndView mv = new ModelAndView();
		
		System.out.println("faq메인입니다.");
		
		mv.setViewName("faq/faqMain");		
		return mv;		
	}
	// ───────────────────────────────────────── 전체 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 전체 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqTotal", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqTotal(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
		
		System.out.println("전체 메뉴 입니다");
		System.out.println("getMenu: "+page.getMenu());
		System.out.println("getSelectBox: "+page.getSelectBox());
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqTotal");		
		return mv;		
	}		
	/*--------------------------------- 질문 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqTotalQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqTotalQt(Page page) {		
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
				
		Map<String, Object> map = service.total_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("전체 메뉴 질문 검색 ");
		System.out.println("getMenu: "+page.getMenu());
		System.out.println("getSelectBox: "+page.getSelectBox());
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqTotal");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqTotalAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqTotalAw(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.total_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("전체 메뉴  답변 검색");
		System.out.println("getMenu: "+page.getMenu());
		System.out.println("getSelectBox: "+page.getSelectBox());
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqTotal");		
		return mv;		
	}

	// ───────────────────────────────────────── 이용안내 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 이용안내 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqGuide", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqGuide(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.faqGuide(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("이용안내 메뉴 입니다");
		System.out.println("getMenu: "+page.getMenu());
		System.out.println("getSelectBox: "+page.getSelectBox());
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqGuide");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqGuideQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqGuideQt(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.guide_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("이용안내 메뉴 질문 검색 ");
		System.out.println("getMenu: "+page.getMenu());
		System.out.println("getSelectBox: "+page.getSelectBox());
		
		mv.addObject("numberList", numberList);	
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqGuide");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqGuideAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqGuideAw(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.guide_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("이용안내 메뉴 답변 검색");
		System.out.println("getMenu: "+page.getMenu());
		System.out.println("getSelectBox: "+page.getSelectBox());
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqGuide");		
		return mv;		
	}
	
	
	// ───────────────────────────────────────── 객실 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 객실 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqRoom", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqRoom(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.faqRoom(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("객실 메뉴 입니다");
		System.out.println("getMenu: "+page.getMenu());
		System.out.println("getSelectBox: "+page.getSelectBox());
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqRoom");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqRoomQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqRoomQt(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.room_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("객실 메뉴 질문 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqRoom");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqRoomAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqRoomAw(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.room_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("객실 메뉴 답글 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqRoom");		
		return mv;		
	}
	
	// ───────────────────────────────────────── 다이닝 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 다이닝 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqDining", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqDining(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.faqDining(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("다이닝 메뉴 입니다");
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqDining");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqDiningQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqDiningQt(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.dining_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("다이닝 메뉴 질문 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqDining");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqDiningAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqDiningAw(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.dining_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("다이닝 메뉴 답변 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqDining");		
		return mv;		
	}
	
	// ───────────────────────────────────────── 시설 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 시설 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqFacility", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqFacility(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.faqFacility(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("부대시설 메뉴 입니다");
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqFacility");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqFacilityQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqFacilityQt(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.facility_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("부대시설 메뉴 질문 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqFacility");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqFacilityAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqFacilityAw(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.facility_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("부대시설 메뉴 답변 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqFacility");		
		return mv;		
	}
	
	// ───────────────────────────────────────── 결제 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 결제 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqPayment", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqPayment(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.faqPayment(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("결제 메뉴 입니다");
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqPayment");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqPaymentQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqPaymentQt(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.payment_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("결제 메뉴 질문 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqPayment");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqPaymentAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqPaymentAw(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.payment_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("결제 메뉴 답변 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqPayment");		
		return mv;		
	}
	
	// ───────────────────────────────────────── 기타 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 기타 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqEtc", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqEtc(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.faqEtc(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("기타 메뉴 입니다");
		
		mv.addObject("numberList", numberList);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqEtc");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqEtcQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqEtcQt(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.etc_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("기타 메뉴 질문 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqEtc");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqEtcAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqEtcAw(Page page) {
		ModelAndView mv = new ModelAndView();
		List<Integer> numberList = new ArrayList();
		
		for(int index = 0; index < 10; index++) {
			numberList.add(index);
			System.out.println("check = " + numberList.get(index));
		}
		
		Map<String, Object> map = service.etc_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("기타 메뉴 답변 검색");
		
		mv.addObject("numberList", numberList);		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqEtc");		
		return mv;		
	}
	
	// ────────────────────────────────────────────────── 관리자 ──────────────────────────────────────────────────
	/*--------------------------------- faq 전체 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/adminFaqSearch", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView adminFaqSearch(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.search(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faqAdmin/adminTotalFaq");		
		return mv;		
	}
	
	/*--------------------------------- faq 등록 ---------------------------------*/
	@RequestMapping(value="/adminFaqInsert", method= RequestMethod.POST)
	public ModelAndView adminFaqInsert() {
		ModelAndView mv = new ModelAndView();
				
		mv.setViewName("faqAdmin/adminFaqInsert");
		return mv;
	}
	
	/*--------------------------------- faq 등록 시 모달창 ---------------------------------*/
	@RequestMapping(value="/adminFaqInsertR", method= RequestMethod.POST)
	public ModelAndView adminFaqInsertR(FaqVo vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println("getCategory: "+vo.getCategory());
		System.out.println("getQuestion: "+vo.getQuestion());
		System.out.println("getAnswer: "+vo.getAnswer());
		
		vo.setCategory("["+vo.getCategory()+"]");
		System.out.println("getQuestion 변경 후 : "+vo.getCategory());
		
		service.faqInsert(vo);		
		
		mv.setViewName("faqAdmin/faqInsertAlert");
		return mv;
	}
	
	/*--------------------------------- faq 수정 ---------------------------------*/
	@RequestMapping(value="/adminFaqUpdate", method= RequestMethod.POST)
	public ModelAndView adminFaqUpdate(FaqVo vo) {
		ModelAndView mv = new ModelAndView();
			
		System.out.println("getId: "+vo.getId());
		vo = service.view(vo.getId());
		
		System.out.println("getCategory 전: "+vo.getCategory());
		if (vo.getCategory().equals("[이용안내]")) {
			vo.setCategory("이용안내");
		}else if (vo.getCategory().equals("[객실]")) {
			vo.setCategory("객실");
		}else if (vo.getCategory().equals("[다이닝]")) {
			vo.setCategory("다이닝");
		}else if (vo.getCategory().equals("[부대시설]")) {
			vo.setCategory("부대시설");
		}else if (vo.getCategory().equals("[결제]")) {
			vo.setCategory("결제");
		}else if (vo.getCategory().equals("[기타]")) {
			vo.setCategory("기타");
		}
		System.out.println("getCategory 후: "+vo.getCategory());
		
		mv.addObject("vo",vo);
		mv.setViewName("faqAdmin/adminFaqUpdate");
		return mv;
	}
	
	/*--------------------------------- faq 수정 시 모달창 ---------------------------------*/
	@RequestMapping(value="/adminFaqUpdateR", method= RequestMethod.POST)
	public ModelAndView adminFaqUpdateR(FaqVo vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println(vo.getId());
		System.out.println(vo.getCategory());
		System.out.println(vo.getQuestion());
		System.out.println(vo.getAnswer());
		
		vo.setCategory("["+vo.getCategory()+"]");
		System.out.println("getQuestion 변경 후 : "+vo.getCategory());
		
		service.faqUpdate(vo);
				
		mv.setViewName("faqAdmin/faqModifyAlert");
		return mv;
	}

	/*--------------------------------- faq 삭제 ---------------------------------*/
	@RequestMapping(value="/adminFaqDelete", method= RequestMethod.POST)
	public ModelAndView adminFaqDelete(FaqVo vo) {
		ModelAndView mv = new ModelAndView();
		
		System.out.println(vo.getId());
				
		service.faqDelete(vo.getId());
		
		mv.setViewName("faqAdmin/faqDeleteAlert");
		return mv;
	}
	
}
