package kr.iei.hotel.notice.service;

import java.util.Map;

import kr.iei.hotel.notice.vo.NoticeReplyVo;
import kr.iei.hotel.notice.vo.Page;

public interface NoticeReplyService {

	Map<String, Object> Rselect(Page page, int nNo);
	public String Rinsert(NoticeReplyVo vo2);
	public NoticeReplyVo Rselect2(String memberNick);
	String Rupdate(NoticeReplyVo vo2);
	String Rdelete(NoticeReplyVo vo2);
	String adminRdelete(NoticeReplyVo vo2);



}
