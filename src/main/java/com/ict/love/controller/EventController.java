package com.ict.love.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;


import com.ict.love.common.FileUtil;
import com.ict.love.service.EventService;
import com.ict.love.vo.Event;


@Controller
public class EventController {

	@Autowired
	private EventService eis;
 	
 	
 	@RequestMapping(value="/event",method=RequestMethod.GET)   
 	public @ResponseBody List<Event> selectEventList(@ModelAttribute Event ei){
 		System.out.println("테스트");
 		return eis.selectEventList(ei);
	}
 	
 	@RequestMapping(value="/event/{eno}",method=RequestMethod.GET)
 	public @ResponseBody Event selectEvent(@PathVariable Integer eno) {	
 		return eis.selectEvent(eno);
 	}
 	
 	
 	@RequestMapping(value="/event",method=RequestMethod.POST)
	@ResponseBody
	public Integer insertEvent(MultipartHttpServletRequest req) {
 		System.out.println(req);
 		int result = eis.insertEvent((Event) FileUtil.parseMap(FileUtil.saveFile(req), Event.class));
 		System.out.println("result : " + result);
 		return result;
	}
 	
 	
 	
 	@RequestMapping(value="/event/{eno}",method=RequestMethod.PUT)
	@ResponseBody 
	public Integer updateEvent(@RequestBody Event ei) {
		return eis.updateEvent(ei);
	}
 	
 	@RequestMapping(value="/love2/{eno}",method=RequestMethod.PUT)
	@ResponseBody 
	public Integer updateFoodList(@RequestBody Event ei , @PathVariable Integer eno) {
 		ei.setEno(eno);
		return eis.updateEvent(ei);
	}
 	
 	@RequestMapping(value="/love2/{eno}",method=RequestMethod.GET)
 	public @ResponseBody ModelAndView FoodList2(@PathVariable Integer eno, Model model) {
 				System.out.println();
 		return new ModelAndView("love/love2","event", eis.selectEvent(eno));
 	}
 	
 	@RequestMapping(value="/love2/{eno}",method=RequestMethod.DELETE)
	@ResponseBody 
	public String deleteEvent(@PathVariable int eno) {
		return eis.deleteEvent(eno)+""; 
	}
 	
 
 	
}
