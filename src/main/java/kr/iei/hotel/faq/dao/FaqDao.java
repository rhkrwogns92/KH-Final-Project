package kr.iei.hotel.faq.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.iei.hotel.faq.mapper.FaqMapper;
import kr.iei.hotel.faq.service.FaqService;
import kr.iei.hotel.faq.vo.FaqVo;
import kr.iei.hotel.notice.vo.Page;



@Service
@Transactional
public class FaqDao implements FaqService {
	Map<String, Object> map = new HashMap<String, Object>();
	List<FaqVo> list = null;
	
	@Autowired
	FaqMapper mapper;
	
	/*--------------------------------- 전체 조회,검색 ---------------------------------*/
	@Override
	public Map<String, Object> select(Page page) {
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_list_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}	
	/*--------------------------------- 전체 질문 검색 ---------------------------------*/
	@Override
	public Map<String, Object> total_question_select(Page page) {
				
		int totListSize = mapper.total_question_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.total_question_select(page);
				
		map.put("page", page);
		map.put("list", list);
				
		return map;
	}
	/*--------------------------------- 전체 답변 검색 ---------------------------------*/
	@Override
	public Map<String, Object> total_answer_select(Page page) {
		
		int totListSize = mapper.total_answer_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.total_answer_select(page);
				
		map.put("page", page);
		map.put("list", list);
				
		return map;
	}
	
	/*--------------------------------- 이용안내 조회, 검색 ---------------------------------*/
	@Override
	public Map<String, Object> faqGuide(Page page) {
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_guide_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqGuide(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 이용안내 질문 검색 ---------------------------------*/
	@Override
	public Map<String, Object> guide_question_select(Page page) {
	
		int totListSize = mapper.guide_question_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.guide_question_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 이용안내 답변 검색 ---------------------------------*/
	@Override
	public Map<String, Object> guide_answer_select(Page page) {
	
		int totListSize = mapper.guide_answer_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.guide_answer_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	
	/*--------------------------------- 객실 조회, 검색 ---------------------------------*/
	@Override
	public Map<String, Object> faqRoom(Page page) {
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_room_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqRoom(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 객식 질문 검색 ---------------------------------*/
	@Override
	public Map<String, Object> room_question_select(Page page) {
	
		int totListSize = mapper.room_question_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.room_question_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 객식 답변 검색 ---------------------------------*/
	@Override
	public Map<String, Object> room_answer_select(Page page) {
	
		int totListSize = mapper.room_answer_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.room_answer_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	
	/*--------------------------------- 다이닝 조회, 검색 ---------------------------------*/
	@Override
	public Map<String, Object> faqDining(Page page) {
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_dining_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqDining(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 다이닝 질문 검색 ---------------------------------*/
	@Override
	public Map<String, Object> dining_question_select(Page page) {
		
		int totListSize = mapper.dining_question_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.dining_question_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 다이닝 답변 검색 ---------------------------------*/
	@Override
	public Map<String, Object> dining_answer_select(Page page) {
	
		int totListSize = mapper.dining_answer_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.dining_answer_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}	
	
	/*--------------------------------- 부대시설 조회, 검색 ---------------------------------*/
	@Override
	public Map<String, Object> faqFacility(Page page) {
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_facility_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqFacility(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 부대시설 질문 검색 ---------------------------------*/
	@Override
	public Map<String, Object> facility_question_select(Page page) {
		
		int totListSize = mapper.facility_question_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.facility_question_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;	}	
	/*--------------------------------- 부대시설 답변 검색 ---------------------------------*/
	@Override
	public Map<String, Object> facility_answer_select(Page page) {
		
		int totListSize = mapper.facility_answer_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.facility_answer_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	
	/*--------------------------------- 결제 조회, 검색 ---------------------------------*/
	@Override
	public Map<String, Object> faqPayment(Page page) {
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_payment_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqPayment(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 결제 질문 검색 ---------------------------------*/
	@Override
	public Map<String, Object> payment_question_select(Page page) {
		
		int totListSize = mapper.payment_question_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.payment_question_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 결제 답변 검색 ---------------------------------*/
	@Override
	public Map<String, Object> payment_answer_select(Page page) {
		
		int totListSize = mapper.payment_answer_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.payment_answer_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	
	/*--------------------------------- 기타 조회, 검색 ---------------------------------*/
	@Override
	public Map<String, Object> faqEtc(Page page) {
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_etc_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqEtc(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	/*--------------------------------- 기타 질문 검색 ---------------------------------*/	
	@Override
	public Map<String, Object> etc_question_select(Page page) {
		
		int totListSize = mapper.etc_question_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.etc_question_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}	
	/*--------------------------------- 기타 답변 검색 ---------------------------------*/
	@Override
	public Map<String, Object> etc_answer_select(Page page) {
		
		int totListSize = mapper.etc_answer_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.etc_answer_select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	
	/*--------------------------------- 관리자 FAQ 등록 ---------------------------------*/
	@Override
	public void faqInsert(FaqVo vo) {		
		int cnt = mapper.faqInsert(vo);		
	}

	/*--------------------------------- 관리자 FAQ 상세보기 ---------------------------------*/
	@Override
	public FaqVo view(int id) {				
		FaqVo vo = mapper.view(id);		
		return vo;
	}
	
	/*--------------------------------- 관리자 FAQ 수정 ---------------------------------*/
	@Override
	public void faqUpdate(FaqVo vo) {
		int cnt = mapper.faqUpdate(vo);
	}
	
	/*--------------------------------- 관리자 FAQ 삭제 ---------------------------------*/
	@Override
	public void faqDelete(int id) {
		int cnt = mapper.faqDelete(id);
	}
	
	/*--------------------------------- 관리자 FAQ 검색하기 ---------------------------------*/
	@Override
	public Map<String, Object> search(Page page) {
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
						
		int totListSize = mapper.admin_tot_list(page);
		System.out.println("전체totListSize: "+totListSize);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.admin_search(page);

		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	
	@Override
	public Map<String, Object> pageSearch(Page page) {
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}				
		
		int totListSize = mapper.admin_tot_list(page);
		System.out.println("페이징totListSize: "+totListSize);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.admin_search(page);	
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}	

}
