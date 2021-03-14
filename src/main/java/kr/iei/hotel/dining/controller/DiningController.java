package kr.iei.hotel.dining.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class DiningController {
	
	//Hotels 레스토랑1	
	@RequestMapping(value="/restaurant1", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView restaurant1() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Dining/restaurant1");		
		return mv;		
	}
	//Hotels 레스토랑2
	@RequestMapping(value="/restaurant2", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView restaurant2() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Dining/restaurant2");		
		return mv;		
	}
	//Hotels 라운지
	@RequestMapping(value="/rounge", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView rounge() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Dining/rounge");		
		return mv;		
	}
}
