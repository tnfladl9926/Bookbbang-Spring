package com.team.bbang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.bbang.domain.EventDTO;
import com.team.bbang.service.EventService;
import com.team.security.CustomUser;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/event")
@Log4j
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@GetMapping("/list.do")
	public String list(Model model) {
		
		List<EventDTO> list = eventService.getList();
		
		model.addAttribute("list", list);
		return "event/list";
	}
	
	@GetMapping("/view.do")
	public String view(Model model, String eventseq) {
		
		log.info("가져온 시퀀스: " + eventseq);
		List<EventDTO> view = eventService.view(eventseq);
		
//		EventDTO view = service.view(seq);
		
		model.addAttribute("view", view);
		
		return "event/view";
	}
	
	@ResponseBody
	@PostMapping("/addcoupon.do")
	public void addcoupon(String seq, Authentication auth) {
		CustomUser user = (CustomUser) auth.getPrincipal();
		
		String memberseq = user.getMemberseq();
		
		log.info("넘어온 시퀀스: " + seq + " 회원번호: " + memberseq);
		eventService.addcoupon(seq, memberseq);
		
	}
	
	/*
	 * @GetMapping("/pop.do") public String pop(HttpServletRequest request ,
	 * HttpServletResponse response, Model model ) throws Exception { // pop.jsp라는
	 * 이름을 가진 쿠폰 발급 완료 팝업 생성 return "event/pop"; }
	 */


}
