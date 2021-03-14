package kr.iei.hotel.adminMember.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.adminMember.dto.AdminMemberDto;
import kr.iei.hotel.adminMember.mapper.AdminMemberMapper;
import kr.iei.hotel.notice.vo.Page;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private AdminMemberMapper adminMemberMapper;

	Map<String, Object> map = new HashMap<String, Object>();	
	List<AdminMemberDto> list = null;
	
	@Override
	public Map<String, Object> adminMemberList(Page page) {
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
						
		//1.페이징 계산을 위해 전체 갯수 가져오기 ( 파라미터 - 1.검색 옵션(selectBox) , 2.검색어 (findStr) )
		int totListSize = adminMemberMapper.adminTotalSize(page);		
		page.setTotListSize(totListSize);
		//2. 페이징 계산 하기 
		page.pageCompute();
		//3. 회원 목록 가져오기 (파라미터  -  1.검색 옵션(selectBox) , 2.검색어 (findStr), 3.페이징 계산된 값 - 시작(startNo) , 4.페이징 계산 값 - 끝 (endNo)  )
		list = adminMemberMapper.adminMemberList(page);
		map.put("page", page);
		map.put("list", list);		
		
		System.out.println("현재 페이지(nowPage): "+page.getNowPage());
		System.out.println("페이징  시작(startNo): "+page.getStartNo());
		System.out.println("페이징  끝(endNo): "+page.getEndNo());
		System.out.println("검색처리 된 회원목록 수(totListSize): "+totListSize);
		System.out.println("선택 박스(selectBox)  : "+page.getSelectBox());	
		System.out.println("검색어(findStr) : "+page.getFindStr() +"\n");			
		return map;
	}

	
	@Override
	public int memberGradeUpdate(Map<String, Object> map) {
		return adminMemberMapper.memberGradeUpdate(map);		
	}

	
}
