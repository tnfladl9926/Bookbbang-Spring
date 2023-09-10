package com.team.bbang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.bbang.domain.EventDTO;
import com.team.bbang.domain.MainDTO;
import com.team.bbang.service.MainService;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@Autowired
	private MainService service;
	
	
	@GetMapping("/main.do")
	public String main(Model model) {
		
		String field="소설/시/희곡";
		
		List<MainDTO> bestlist = service.bestlist();
		List<MainDTO> freshlist = service.freshlist();
		List<EventDTO> eventlist = service.eventlist();
		List<MainDTO> fieldlist = service.fieldlist(field);
		
		
		model.addAttribute("bestlist",bestlist);
		model.addAttribute("freshlist",freshlist);
		model.addAttribute("eventlist",eventlist);
		model.addAttribute("fieldlist",fieldlist);
		
		
		
		return "/main/main";
	}	
	
	@GetMapping("/mainok.do")
	@ResponseBody
	public List<MainDTO> mainok(Model model, String field) {
		
		
		List<MainDTO> fieldlist = service.fieldlist(field);
		
		
		
		return fieldlist;
	}

}
