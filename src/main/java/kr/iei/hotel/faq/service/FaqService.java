package kr.iei.hotel.faq.service;

import java.util.Map;

import kr.iei.hotel.faq.vo.FaqVo;
import kr.iei.hotel.notice.vo.Page;

public interface FaqService {

	public Map<String, Object> select(Page page);
	public Map<String, Object> total_question_select(Page page);
	public Map<String, Object> total_answer_select(Page page);

	public Map<String, Object> faqGuide(Page page);
	public Map<String, Object> guide_question_select(Page page);
	public Map<String, Object> guide_answer_select(Page page);
	
	public Map<String, Object> faqRoom(Page page);
	public Map<String, Object> room_question_select(Page page);
	public Map<String, Object> room_answer_select(Page page);

	public Map<String, Object> faqDining(Page page);
	public Map<String, Object> dining_question_select(Page page);
	public Map<String, Object> dining_answer_select(Page page);
	
	public Map<String, Object> faqFacility(Page page);
	public Map<String, Object> facility_question_select(Page page);
	public Map<String, Object> facility_answer_select(Page page);
	
	public Map<String, Object> faqPayment(Page page);
	public Map<String, Object> payment_question_select(Page page);
	public Map<String, Object> payment_answer_select(Page page);
	
	public Map<String, Object> faqEtc(Page page);
	public Map<String, Object> etc_question_select(Page page);
	public Map<String, Object> etc_answer_select(Page page);
	
	public void faqInsert(FaqVo vo);
	public FaqVo view(int id);
	public void faqUpdate(FaqVo vo);
	public void faqDelete(int id);
	public Map<String, Object> search(Page page);
	public Map<String, Object> pageSearch(Page page);	
	
}
