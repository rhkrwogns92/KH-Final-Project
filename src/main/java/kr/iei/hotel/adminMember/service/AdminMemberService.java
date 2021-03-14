package kr.iei.hotel.adminMember.service;

import java.util.Map;

import kr.iei.hotel.faq.vo.FaqVo;
import kr.iei.hotel.notice.vo.Page;

public interface AdminMemberService {

	public Map<String, Object> adminMemberList(Page page);

	public int memberGradeUpdate(Map<String, Object> map);
	
}
