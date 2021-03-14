package kr.iei.hotel.guestroom.controller;


import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.iei.hotel.guestroom.service.GuestRoomService;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;


@Controller
public class GuestRoomController {
	
	private static final Logger logger = LoggerFactory.getLogger(GuestRoomController.class);
	
	@Autowired
	GuestRoomService guestRoomService;
	
	//-------------------------------------User--------------------------------------------
	//객실 리스트 뷰
	@RequestMapping(value = "/guestRoomView", method = RequestMethod.GET)
	public String guestRoomView(Model model)throws Exception {
		
		logger.info("객실 리스트");
		final int standardNumber = 1;
		model.addAttribute("list", guestRoomService.guestRoomList(standardNumber));
		return "/guestroom/guestRoomView";
	
	}
	//객실 상세 뷰
	@RequestMapping(value = "/guestRoomDetailView", method = RequestMethod.GET)
	public String guestRoomDetailView(Model model, GuestRoomVO guestRoomVO)throws Exception {
		
		logger.info("객실 상세 리스트");
		
		guestRoomVO = guestRoomService.guestRoomDetailList(guestRoomVO);
		
		String[] serviceList1 = guestRoomVO.getGuestRoomService1().split(",");
		String[] serviceList2 = guestRoomVO.getGuestRoomService2().split(",");
		String[] amenityList = guestRoomVO.getGuestRoomAmenity().split(",");
		String[] informationList = guestRoomVO.getGuestRoomInformation().split(",");
		
		List<String> guestRoomServiceList1 = new ArrayList();
		List<String> guestRoomServiceList2 = new ArrayList();
		List<String> guestRoomAmenityList = new ArrayList();
		List<String> guestRoomInformationList = new ArrayList();
		
		for(int i = 0; i < serviceList1.length; i++) {
			guestRoomServiceList1.add(serviceList1[i]);
		}
		model.addAttribute("serviceList1", guestRoomServiceList1);
		
		for(int i = 0; i < serviceList2.length; i++) {
			guestRoomServiceList2.add(serviceList2[i]);
		}
		model.addAttribute("serviceList2", guestRoomServiceList2);
		
		for(int i = 0; i < amenityList.length; i++) {
			guestRoomAmenityList.add(amenityList[i]);
		}
		model.addAttribute("amenityList", guestRoomAmenityList);
		
		for(int i = 0; i < informationList.length; i++) {
			guestRoomInformationList.add(informationList[i]);
		}
		model.addAttribute("informationList", guestRoomInformationList);
		
		model.addAttribute("list", guestRoomVO);
		
		return "/guestroom/guestRoomDetailView";
	
	}
	
	//-------------------------------------Admin--------------------------------------------
	//객실 관리 리스트 뷰
	@RequestMapping(value = "/guestRoomAdminView", method = RequestMethod.GET)
	public String guestRoomAdminList(Model model, GuestRoomVO guestRoomVO)throws Exception {
		
		logger.info("객실 관리 리스트");
		List<GuestRoomVO> guestRoomVOList = new ArrayList();
		List<Integer> serviceCountList = new ArrayList();
		List<Integer> amenityCountList = new ArrayList();
		List<Integer> informationCountList = new ArrayList();
		guestRoomVOList = guestRoomService.guestRoomAdminList();
		for(int index = 0; index < guestRoomVOList.size(); index++) {
		guestRoomVO = guestRoomVOList.get(index);
		String[] serviceList1 = guestRoomVO.getGuestRoomService1().split(",");
		String[] serviceList2 = guestRoomVO.getGuestRoomService2().split(",");
		String[] amenityList = guestRoomVO.getGuestRoomAmenity().split(",");
		String[] information = guestRoomVO.getGuestRoomInformation().split(",");
		int totalServiceCount = serviceList1.length + serviceList2.length;
		serviceCountList.add(totalServiceCount);
		amenityCountList.add(amenityList.length);
		informationCountList.add(information.length);
		}
		model.addAttribute("serviceCountList", serviceCountList);
		model.addAttribute("amenityCountList", amenityCountList);
		model.addAttribute("informationCountList", informationCountList);

		model.addAttribute("list", guestRoomVOList);
		return "/guestroomAdmin/guestRoomAdminView";
	
	}
	//객실 추가 뷰
	@RequestMapping(value = "/guestRoomAddView", method = RequestMethod.GET)
	public String guestRoomAddView()throws Exception {
		
		logger.info("객실 추가 뷰");
		return "/guestroomAdmin/guestRoomAddView";
	
	}
	//객실 추가
	@RequestMapping(value = "/guestRoomInsert", method = RequestMethod.POST)
	public String guestRoomInsert(GuestRoomVO guestRoomVO, HttpServletRequest req)throws Exception {
		
		logger.info("객실 추가");
		String PATH = req.getSession().getServletContext().getRealPath("/img/");

		guestRoomVO.getImage1().transferTo(new File(PATH + guestRoomVO.getImage1().getOriginalFilename()));
		guestRoomVO.getImage2().transferTo(new File(PATH + guestRoomVO.getImage2().getOriginalFilename()));
		guestRoomVO.getImage3().transferTo(new File(PATH + guestRoomVO.getImage3().getOriginalFilename()));
		guestRoomVO.getImage4().transferTo(new File(PATH + guestRoomVO.getImage4().getOriginalFilename()));

		guestRoomVO.setGuestRoomImage1(guestRoomVO.getImage1().getOriginalFilename());
		guestRoomVO.setGuestRoomImage2(guestRoomVO.getImage2().getOriginalFilename());
		guestRoomVO.setGuestRoomImage3(guestRoomVO.getImage3().getOriginalFilename());
		guestRoomVO.setGuestRoomImage4(guestRoomVO.getImage4().getOriginalFilename());
		guestRoomService.guestRoomInsert(guestRoomVO);
		return "redirect:/guestRoomAdminView";
	
	}
	//객실 삭제
	@RequestMapping(value = "/guestRoomDelete", method = RequestMethod.GET)
	public String guestRoomDelete(String guestRoomName)throws Exception {
		
		logger.info("객실 삭제");
		guestRoomService.guestRoomDelete(guestRoomName);
		return "redirect:/guestRoomAdminView";
	
	}
	//객실 관리 정보 리스트 뷰
	@RequestMapping(value ="/guestRoomAdminInfoView", method = {RequestMethod.POST,RequestMethod.GET})
	public String guestRoomAdminInfoList(String guestRoomName, Model model)throws Exception {
		
		logger.info("객실 관리 정보 리스트 뷰");
		model.addAttribute("list", guestRoomService.guestRoomAdminInfoList(guestRoomName));
		model.addAttribute("guestRoomName", guestRoomName);
		return "/guestroomAdmin/guestRoomAdminInfoView";
	
	}
	//객실 정보 추가 뷰
	@RequestMapping(value = "/guestRoomInfoAddView", method = RequestMethod.GET)
	public String guestRoomInfoAddView(String guestRoomName, Model model)throws Exception {
		
		logger.info("객실 정보 추가 뷰");
		model.addAttribute("guestRoomName", guestRoomName);
		return "/guestroomAdmin/guestRoomInfoAddView";
	
	}
	//객실 정보 추가
	@RequestMapping(value = "/guestRoomInfoInsert", method = {RequestMethod.POST,RequestMethod.GET})
	public String guestRoomInfoInsert(GuestRoomVO guestRoomVO, Model model)throws Exception {
		
		logger.info("객실 정보 추가");
		guestRoomService.guestRoomInfoInsert(guestRoomVO);
		return "forward:/guestRoomAdminInfoView";
		
	}
	//객실 정보 삭제
	@RequestMapping(value = "/guestRoomInfoDelete", method = RequestMethod.GET)
	public String guestRoomInfoDelete(int guestRoomNo)throws Exception {
		
		logger.info("객실 정보 삭제");
		guestRoomService.guestRoomInfoDelete(guestRoomNo);
		return "forward:/guestRoomAdminInfoView";
		
		
	}
}
