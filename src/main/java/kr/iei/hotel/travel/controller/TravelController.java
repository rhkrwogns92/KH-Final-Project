package kr.iei.hotel.travel.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.iei.hotel.travel.service.TravelService;
import kr.iei.hotel.travel.vo.TravelVO;

@Controller
public class TravelController {
	
	@Autowired
	TravelService travelService;
	//관리자 리스트 뷰
//	@RequestMapping(value="/tourismAdminView", method=RequestMethod.GET)
//	public String tourismAdminView(Model model)throws Exception{
//		List<TravelVO> travelVO = new ArrayList<TravelVO>();
//		travelVO = travelService.selectTourList();
//		for(int i=0; i< travelVO.size(); i++) {
//			System.out.println(travelVO.get(i).getTsName());
//		}
//		
//		model.addAttribute("list", travelVO);
//		return  "/TravelAdmin/tourismAdminView";
//	
//	}
	
	//여행 관광뷰
	@RequestMapping(value="/tourismView", method=RequestMethod.GET)
	public String tourismView(Model model, TravelVO travelVO)throws Exception{
		
		model.addAttribute("tourism", travelVO);
		return "/Travel/tourismView";
	}
	
	//여행 관광 전체뷰
	@RequestMapping(value="/tourismDetailView", method=RequestMethod.GET)
	public String tourismDetailView(Model model, TravelVO travelVO)throws Exception{
		
		String name = travelVO.getTsName();
		travelVO = travelService.selectTourDetail(name);
		
		model.addAttribute("tourDetail", travelVO);
		return "/Travel/tourismDetailView";
	}
	
	//여행 맛집뷰
	@RequestMapping(value="/foodView", method=RequestMethod.GET)
	public String foodView(Model model, TravelVO travelVO)throws Exception{
		List<TravelVO> travelVoList = new ArrayList<TravelVO>();
		travelVoList = travelService.selectFoodList();
		for(int i=0; i<travelVoList.size(); i++) {
			System.out.println(travelVoList.get(i).getFrName());
		}
		model.addAttribute("food", travelVoList);
		return "/Travel/foodView";
	}
	
	//여행 맛집 전체뷰
	@RequestMapping(value="/foodDetailView", method=RequestMethod.GET)
	public String foodDetailView(Model model, TravelVO travelVO)throws Exception{
		
		String name = travelVO.getFrName();
		travelVO = travelService.selectFoodDetail(name);
		System.out.println(travelVO.toString());
		model.addAttribute("foodDetail", travelVO);
		return "/Travel/foodDetailView";
	}
}
