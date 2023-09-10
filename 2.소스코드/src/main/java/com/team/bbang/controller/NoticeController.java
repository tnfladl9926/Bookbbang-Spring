package com.team.bbang.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.bbang.domain.NoticeDTO;
import com.team.bbang.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	private NoticeService service;
	                            
	@GetMapping("/notice.do")
	
	public String notice(Model model, Principal principal) {
		
		List<NoticeDTO> noticelist = service.noticelist(); 
		model.addAttribute("noticelist",noticelist);
		
		return "notice/notice";
	}
	
	@GetMapping("/noticeadd.do")
	public String noticeadd(Model model) {
		
		return "notice/noticeadd";
	}
	
	@PostMapping("/noticeaddok.do")
	public String noticeaddok(NoticeDTO dto, Model model) {
	
		service.noticeinsert(dto);
		
		return "redirect:/notice/notice.do";
	}
	
	
	
	@GetMapping("/noticedetail.do")
	public String noticedetail(String noticeseq, Model model) {
		
		NoticeDTO dto = service.noticedeatil(noticeseq);
		service.noticeviewcnt(noticeseq);
		
		model.addAttribute("dto",dto);
		
		return "notice/noticedetail";
	}
	
	@GetMapping("/noticedelete.do")
	public String noticedelete(String noticeseq) {
		
		System.out.println("noticeseq:" + noticeseq);
		
		service.noticedelete(noticeseq);
		
		
		return "redirect:/notice/notice.do";
	}
}
