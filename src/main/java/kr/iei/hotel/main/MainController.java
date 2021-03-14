package kr.iei.hotel.main;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");		
		return mv;		
	}
	
	//About Us 호텔소개, 직원 소개, 멤버십 소개	
	@RequestMapping(value="/introduce", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView introduce() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("AboutUs/introduce");		
		return mv;		
	}
	
	//About Us 이벤트	
	@RequestMapping(value="/event", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView event() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("AboutUs/event");		
		return mv;		
	}
	
	//About Us 오시는길	
	@RequestMapping(value="/directions", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView directions() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("AboutUs/directions");		
		return mv;		
	}
	
	//Hotels 다이닝	
	@RequestMapping(value="/diningView", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView dining() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Dining/diningView");		
		return mv;		
	}
	
	//Hotels 부대시설
	@RequestMapping(value="/facilityView", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView facility() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Facility/facilityView");		
		return mv;		
	}
	
	// myPage
	//@RequestMapping(value="/myPage", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView myPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("myPage/updateMember");
		return mv;
	}
	
}
