package kr.iei.hotel.notice.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.iei.hotel.notice.service.NoticeReplyService;
import kr.iei.hotel.notice.service.NoticeService;
import kr.iei.hotel.notice.vo.NoticeReplyVo;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;

@RestController
public class NoticeReplyController {
	@Autowired
	NoticeService service;
	@Autowired
	NoticeReplyService Rservice;
	@Autowired
	NoticeController control;
   /* 일반 사용자 공지사항 */
	
   /*--------------------------------- 일반 공지사항 댓글 입력 ---------------------------------*/
	 @RequestMapping(value="/noticeDetail_Rinsert", method=RequestMethod.POST)
	   public ModelAndView noticeRinsert_result(NoticeVo vo, Page page, NoticeReplyVo vo2) {
			 
			ModelAndView mv = new ModelAndView();				
			
			if (vo2.getMemberNick() != null) {
				vo2.setNick(vo2.getMemberNick());
				
				NoticeReplyVo list2 = Rservice.Rselect2(vo2.getNick());
				vo2.setMemberNumber(list2.getId());						
							
				String msg = Rservice.Rinsert(vo2);
			}
			
			mv.addObject("vo2", vo2);			
			
			return control.noticeDetail(vo, page, vo2);
	   }		
	   
	   /*--------------------------------- 댓글 수정 ---------------------------------*/
	   @RequestMapping(value="/Rupdate", method= RequestMethod.POST)
	   public ModelAndView Rupdate(NoticeVo vo, Page page, NoticeReplyVo vo2,
			   @RequestParam(value="Rcontent", required=false, defaultValue="") String Rcontent,
			   @RequestParam(value="pwd", required=false, defaultValue="") String pwd) {
		   ModelAndView mv = new ModelAndView();
		   
		   System.out.println("rNo:"+vo2.getrNo());
		   
		   vo2.setContent(Rcontent);
		   vo2.setPassword(pwd);
		   
		   System.out.println("getrNo: "+vo2.getrNo());
		   System.out.println("getContent: "+vo2.getContent());
		   System.out.println("getPassword: "+vo2.getPassword());
		   
		   String msg = Rservice.Rupdate(vo2);		      
		   	   
		   return control.noticeDetail(vo, page, vo2);
	   }
	   
	   /*--------------------------------- 사용자 댓글 삭제 ---------------------------------*/
	   @RequestMapping(value="/Rdelete", method= RequestMethod.POST)
	   public ModelAndView Rdelete(NoticeVo vo, Page page, NoticeReplyVo vo2,
			   @RequestParam(value="pwd", required=false, defaultValue="") String pwd) {
		   ModelAndView mv = new ModelAndView();	
		   
		   vo2.setPassword(pwd);	
		   System.out.println("사용자 댓글삭제 시작");
		   System.out.println(vo2.getPassword());
		   System.out.println(vo2.getrNo());
		   		   
		   String msg = Rservice.Rdelete(vo2);
				   
		   System.out.println("사용자 댓글삭제 끝");
		   

		   return control.noticeDetail(vo, page, vo2);
	   }
	   
	   /*--------------------------------- 관리자 댓글 삭제 ---------------------------------*/
	   @RequestMapping(value="/adminRdelete", method= RequestMethod.POST)
	   public ModelAndView adminRdelete(NoticeVo vo, Page page, NoticeReplyVo vo2) {
		   
		   ModelAndView mv = new ModelAndView();	
		   
		   
		   System.out.println("사용자뷰 댓글삭제 출발");
		   String msg = Rservice.adminRdelete(vo2);		
		   System.out.println("사용자뷰 댓글삭제 도착");
		   
		   return control.noticeDetail(vo, page, vo2);
	   }
	   
	   /* 관리자 공지사항 */ 
	   
	   /*--------------------------------- 관리자 공지사항 댓글 입력 ---------------------------------*/
	   @RequestMapping(value="/admin_noticeDetail_Rinsert", method=RequestMethod.POST)
	   public ModelAndView admin_noticeDetail_Rinsert(NoticeVo vo, Page page, NoticeReplyVo vo2) {
				
		   ModelAndView mv = new ModelAndView();
			   
		   if (vo2.getMemberNick() != null) {
			   vo2.setNick(vo2.getMemberNick());
				
			   NoticeReplyVo list2 = Rservice.Rselect2(vo2.getNick());
			   vo2.setMemberNumber(list2.getId());						
							
			   String msg = Rservice.Rinsert(vo2);
		   }
			
		   mv.addObject("vo2", vo2);			
			
		   return control.adminNoticeDetail(vo, page, vo2);
	   }
	   
	   /*--------------------------------- 관리자 공지사항 댓글 수정 ---------------------------------*/
	   @RequestMapping(value="/admin_Rupdate", method= RequestMethod.POST)
	   public ModelAndView admin_Rupdate(NoticeVo vo, Page page, NoticeReplyVo vo2,
			   @RequestParam(value="Rcontent", required=false, defaultValue="") String Rcontent,
			   @RequestParam(value="pwd", required=false, defaultValue="") String pwd) {
		   ModelAndView mv = new ModelAndView();
		   
		   vo2.setContent(Rcontent);
		   vo2.setPassword(pwd);
		  
		   String msg = Rservice.Rupdate(vo2);		      
		   	   
		   return control.adminNoticeDetail(vo, page, vo2);
	   }
	   
	   /*--------------------------------- 관리자 공지사항  사용자 댓글 삭제 ---------------------------------*/
	   @RequestMapping(value="/admin_Rdelete", method= RequestMethod.POST)
	   public ModelAndView admin_Rdelete(NoticeVo vo, Page page, NoticeReplyVo vo2,
			   @RequestParam(value="pwd", required=false, defaultValue="") String pwd) {
		   ModelAndView mv = new ModelAndView();	
		   
		   vo2.setPassword(pwd);		  
		   
		   String msg = Rservice.Rdelete(vo2);
		   
		   return control.adminNoticeDetail(vo, page, vo2);
	   }
	      
	   /*--------------------------------- 관리자 공지사항 댓글 삭제 ---------------------------------*/
	   @RequestMapping(value="/admin_notice_Rdelete", method= RequestMethod.POST)
	   public ModelAndView admin_notice_Rdelete(NoticeVo vo, Page page, NoticeReplyVo vo2) {
		   ModelAndView mv = new ModelAndView();	
		   
		   String msg = Rservice.adminRdelete(vo2);		
		   
		   return control.adminNoticeDetail(vo, page, vo2);
	   }
	   
	}