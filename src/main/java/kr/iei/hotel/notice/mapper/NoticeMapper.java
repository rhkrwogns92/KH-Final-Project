package kr.iei.hotel.notice.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.iei.hotel.notice.vo.NoticeReplyVo;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;

@Repository
@Mapper
public interface NoticeMapper {
	
	/*---------- 공지사항 사용자----------*/
	public int tot_list_size(Page page);
	public int tot_title_size(Page page);
	public int tot_contents_size(Page page);
	public List<NoticeVo> select(Page page);
	public List<NoticeVo> title_select(Page page);
	public List<NoticeVo> contents_select(Page page);
	public int insert(NoticeVo vo);
	public int update(NoticeVo vo);
	public int delete(int nNo);
	public NoticeVo view(int nNo);
	public int hit(int nNo);
	public NoticeVo total_article(int nNo, String findStr);
	public NoticeVo title_article(int nNo, String findStr);
	public NoticeVo content_article(int nNo, String findStr);

	/*---------- 공지사항 관리자 ----------*/
	public int admin_tot_list_size(Page page);
	public int admin_tot_title_size(Page page);
	public int admin_tot_contents_size(Page page);
	public List<NoticeVo> admin_select(Page page);
	public List<NoticeVo> admin_title_select(Page page);
	public List<NoticeVo> admin_contents_select(Page page);
	public NoticeVo admin_total_article(int nNo, String findStr); 
	public NoticeVo admin_title_article(int nNo, String findStr);
	public NoticeVo admin_content_article(int nNo, String findStr);
	
	/*---------- 댓글 ----------*/	
	public int tot_reply_list_size(int nNo);
	public List<NoticeReplyVo> reply_select(int startNo, int endNo, int nNo);
	public int Rinsert(NoticeReplyVo vo2);
	public NoticeReplyVo Rselect2(String memberNick);
	public int Rupdate(NoticeReplyVo vo2);
	public int Rdelete(NoticeReplyVo vo2);
	public int adminRdelete(NoticeReplyVo vo2);
	
	
	
	
}
