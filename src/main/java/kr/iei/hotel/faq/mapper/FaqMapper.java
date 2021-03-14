package kr.iei.hotel.faq.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.iei.hotel.faq.vo.FaqVo;
import kr.iei.hotel.notice.vo.Page;

@Repository
@Mapper
public interface FaqMapper {

	public int tot_list_size(Page page);
	public List<FaqVo> select(Page page);
	public List<FaqVo> faqGuide(Page page);
	public List<FaqVo> faqRoom(Page page);
	public List<FaqVo> faqDining(Page page);
	public List<FaqVo> faqFacility(Page page);
	public List<FaqVo> faqPayment(Page page);
	public List<FaqVo> faqEtc(Page page);
	public int tot_guide_size(Page page);
	public int tot_room_size(Page page);
	public int tot_dining_size(Page page);
	public int tot_facility_size(Page page);
	public int tot_payment_size(Page page);
	public int tot_etc_size(Page page);
	
	public int total_question_size(Page page);
	public List<FaqVo> total_question_select(Page page);
	public int total_answer_size(Page page);
	public List<FaqVo> total_answer_select(Page page);
	
	public int guide_question_size(Page page);
	public List<FaqVo> guide_question_select(Page page);
	public int guide_answer_size(Page page);
	public List<FaqVo> guide_answer_select(Page page);
	
	public int room_question_size(Page page);
	public List<FaqVo> room_question_select(Page page);
	public int room_answer_size(Page page);
	public List<FaqVo> room_answer_select(Page page);
	
	public int dining_question_size(Page page);
	public List<FaqVo> dining_question_select(Page page);
	public int dining_answer_size(Page page);
	public List<FaqVo> dining_answer_select(Page page);
	
	public int facility_question_size(Page page);
	public List<FaqVo> facility_question_select(Page page);
	public int facility_answer_size(Page page);
	public List<FaqVo> facility_answer_select(Page page);
	
	public int payment_question_size(Page page);
	public List<FaqVo> payment_question_select(Page page);
	public int payment_answer_size(Page page);
	public List<FaqVo> payment_answer_select(Page page);
	
	public int etc_question_size(Page page);
	public List<FaqVo> etc_question_select(Page page);
	public int etc_answer_size(Page page);
	public List<FaqVo> etc_answer_select(Page page);
	
	public int faqInsert(FaqVo vo);
	public FaqVo view(int id);
	public int faqUpdate(FaqVo vo);
	public int faqDelete(int id);
	public int admin_tot_list(Page page);
	public List<FaqVo> admin_search(Page page);

	
	
	


}
