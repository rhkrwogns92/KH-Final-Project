package kr.iei.hotel.notice.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import kr.iei.hotel.notice.mapper.NoticeMapper;
import kr.iei.hotel.notice.service.NoticeService;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;

@Service
@Transactional
public class NoticeDao implements NoticeService {
	
	@Autowired
	NoticeMapper mapper;
	
	/*사용자*/
	
	/*--------------------------------- 전체 조회,검색 ---------------------------------*/
	@Override
	public Map<String, Object> select(Page page){
		Map<String, Object> map = new HashMap<String, Object>();
		List<NoticeVo> list = null;
				
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
		
		System.out.println("Dao_전체");
		
		map.put("page", page);
		map.put("list", list);
		
		return map;
	}
	
	/*--------------------------------- 제목 검색 ---------------------------------*/
	@Override
	public Map<String, Object> title_select(Page page){
		Map<String, Object> map = new HashMap<String, Object>();
		List<NoticeVo> list = null;		
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);			
		}		
		
		int totListSize = mapper.tot_title_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
				
		list = mapper.title_select(page);
		
		System.out.println("Dao_제목");
				
		map.put("page", page);
		map.put("list", list);
		
		return map;
	}
	
	/*--------------------------------- 내용 검색 ---------------------------------*/
	@Override
	public Map<String, Object> contents_select(Page page){
		Map<String, Object> map = new HashMap<String, Object>();
		List<NoticeVo> list = null;
				
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);			
		}		
		
		int totListSize = mapper.tot_contents_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
				
		list = mapper.contents_select(page);
		
		System.out.println("Dao_내용");
		
		map.put("page", page);
		map.put("list", list);
		
		return map;
	}	
	
	/*--------------------------------- 전체검색 시 이전글, 다음글 ---------------------------------*/
	@Override
	public NoticeVo total_article(int nNo, String findStr) {		
		
		NoticeVo vo = mapper.total_article(nNo, findStr);
		System.out.println("전체 검색 이전글,다음글");
		
		return vo;
	}
	
	/*--------------------------------- 제목검색 시 이전글, 다음글 ---------------------------------*/
	@Override
	public NoticeVo title_article(int nNo, String findStr) {

		NoticeVo vo = mapper.title_article(nNo, findStr);
		System.out.println("제목 검색 이전글,다음글");

		return vo;		
	}
	
	/*--------------------------------- 내용검색 시 이전글, 다음글 ---------------------------------*/
	@Override
	public NoticeVo content_article(int nNo, String findStr) {		

		NoticeVo vo = mapper.content_article(nNo, findStr);
		System.out.println("내용 검색 이전글,다음글");

		
		return vo;		
	}
	
	/*--------------------------------- 공지 상세보기 ---------------------------------*/
	@Override
	public NoticeVo view(int nNo) {
		mapper.hit(nNo);	
		NoticeVo vo = mapper.view(nNo);	
				
		return vo;		
	}
	
	/*관리자*/
	
	/*--------------------------------- 관리자 전체 조회,검색 ---------------------------------*/
	@Override
	public Map<String, Object> admin_select(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<NoticeVo> list = null;
				
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);			
		}		
		
		int totListSize = mapper.admin_tot_list_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
				
		list = mapper.admin_select(page);
		
		System.out.println("Dao_전체");
		
		map.put("page", page);
		map.put("list", list);
		
		return map;
	}
	
	/*--------------------------------- 관리자 제목 검색 ---------------------------------*/
	@Override
	public Map<String, Object> admin_title_select(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<NoticeVo> list = null;		
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);			
		}		
		
		int totListSize = mapper.admin_tot_title_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
				
		list = mapper.admin_title_select(page);
		
		System.out.println("Dao_제목");
				
		map.put("page", page);
		map.put("list", list);
		
		return map;
	}

	/*--------------------------------- 관리자 내용 검색 ---------------------------------*/
	@Override
	public Map<String, Object> admin_contents_select(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<NoticeVo> list = null;
				
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);			
		}		
		
		int totListSize = mapper.admin_tot_contents_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
				
		list = mapper.admin_contents_select(page);
		
		System.out.println("Dao_내용");
		
		map.put("page", page);
		map.put("list", list);
		
		return map;
	}

	/*--------------------------------- 관리자 전체검색 시 이전글, 다음글 ---------------------------------*/
	@Override
	public NoticeVo admin_total_article(int nNo, String findStr) {
		NoticeVo vo = mapper.admin_total_article(nNo, findStr);
		System.out.println("전체 검색 이전글,다음글");
		
		return vo;
	}
	
	/*--------------------------------- 관리자 제목검색 시 이전글, 다음글 ---------------------------------*/
	@Override
	public NoticeVo admin_title_article(int nNo, String findStr) {
		NoticeVo vo = mapper.admin_title_article(nNo, findStr);
		System.out.println("제목 검색 이전글,다음글");

		return vo;
	}

	/*--------------------------------- 관리자 내용검색 시 이전글, 다음글 ---------------------------------*/
	@Override
	public NoticeVo admin_content_article(int nNo, String findStr) {
		NoticeVo vo = mapper.admin_content_article(nNo, findStr);
		System.out.println("내용 검색 이전글,다음글");
		
		return vo;
	}
	
	/*--------------------------------- 공지 등록 ---------------------------------*/
	@Override
	public String insert(NoticeVo vo) {
		String msg = "공지사항이 성공적으로 등록 되었습니다.";
		
		int cnt = mapper.insert(vo);
		if (cnt < 1) {
			msg = "공지사항 등록 중 오류가 발생하였습니다.";
		}
		
		return msg;
	}
	
	/*--------------------------------- 공지 수정 ---------------------------------*/
	@Override
	public String update(NoticeVo vo) {
		String msg = "공지사항이 성공적으로 수정 되었습니다.";
		
		int cnt = mapper.update(vo);
		if (cnt < 1) {
			msg = "공지사항 수정 중 오류가 발생하였습니다.";
		}
		
		return msg;
	}
	
	/*--------------------------------- 공지 삭제 ---------------------------------*/
	@Override
	public String delete(int nNo) {
		String msg = "공지사항 게시글이 성공적으로 삭제 되었습니다.";
		
		int cnt = mapper.delete(nNo);
		if (cnt < 1) {
			msg = "게시글 삭제 중 오류가 발생하였습니다.";
		}
		
		return msg;
	}
	
}
