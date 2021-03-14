package kr.iei.hotel.facility.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class FacilityController {
	
	//Hotels 수영장 
	@RequestMapping(value="/pool", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView pool() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Facility/pool");		
		return mv;		
	}
	//Hotels 사우나
	@RequestMapping(value="/sauna", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView sauna() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Facility/sauna");		
		return mv;		
	}
	//Hotels 피트니스
	@RequestMapping(value="/pitness", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView pitness() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Facility/pitness");		
		return mv;		
	}
	//Hotels 스파
	@RequestMapping(value="/spa", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView spa() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Facility/spa");		
		return mv;		
	}
	//Hotels 파크
	@RequestMapping(value="/park", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView park() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Facility/park");		
		return mv;		
	}
	//Hotels 키즈
	@RequestMapping(value="/kids", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView kids() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Facility/kids");		
		return mv;		
	}	
}
