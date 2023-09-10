package com.team.bbang.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.team.bbang.domain.ChatRoomDTO;
import com.team.bbang.domain.SecondhandDTO;
import com.team.bbang.service.SecondhandService;
import com.team.security.CustomUser;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/secondhand")
@Log4j
public class SecondhandController {

	@Autowired
	private SecondhandService service;
	
	@GetMapping("/list.do")
	public String getList(Model model, String word,@RequestParam(value="condition", defaultValue="1") String condition) {
		List<SecondhandDTO> list;
		
		if(word == null || word.equals("")) {
			list = service.getList();
		}else {
			list = service.searchList(word, condition);
		}
		
		model.addAttribute("list", list);
		return "secondhand/list";
	}
	
	@GetMapping("/view.do")
	public String getView(Model model, String secondhandseq, String nickname, Authentication auth) {
		CustomUser user = (CustomUser) auth.getPrincipal();
		String memberseq = user.getMemberseq();
		String nick = user.getNickname();
		
		SecondhandDTO dto = service.getView(secondhandseq);
		
		//nick은 현재 로그인한 사람, nickname은 view를 클릭했을때 게시글 등록자nickname
		if(nick.equals(nickname)) {
			List<ChatRoomDTO> chatDto = service.getChatRoom(secondhandseq, memberseq);
			model.addAttribute("chatDto", chatDto);
			model.addAttribute("others", 1);
			log.info("판매자 입니다.");
			
		}else {
			//판매자가 아닐 때 다른 제어
			model.addAttribute("others", 2);
			log.info("구매자 입니다.");
		}
		
//		ChatLogDTO logDto = service.getChatLog();
		
		model.addAttribute("dto", dto);
//		model.addAttribute("logDto", logDto);
		model.addAttribute("nickname", nickname);
		model.addAttribute("memberseq", memberseq);
		model.addAttribute("smemberseq",dto.getMemberseq());
		
		return "secondhand/view";
	}
	
	@GetMapping("/add.do")
	public String add() {
		
		return "secondhand/add";
	}
	
	@PostMapping("/addok.do")
	public String addok(Model model, SecondhandDTO dto, List<MultipartFile> images, HttpServletRequest req) {
		service.addok(dto, images, req);
		
		return "redirect:/secondhand/list.do";
	}
	
	@GetMapping("/edit.do")
	public String edit(Model model, String secondhandseq) {
		SecondhandDTO dto = service.getView(secondhandseq);
		
		model.addAttribute("dto", dto);
		return "/secondhand/edit";
	}
	
	@PostMapping("/editok.do")
	public String editok(Model model, SecondhandDTO dto, List<MultipartFile> images, HttpServletRequest req, String[] data) {
		service.edit(dto, images, req, data);
		
		return "redirect:/secondhand/list.do";
	}
	
	@GetMapping("/del.do")
	public String del(String seq) {
		int result = service.delSecondhand(seq);
		
		return "redirect:/secondhand/list.do";
	}
	
	@GetMapping("/mystore.do")
	public String mystore(Authentication auth, Model model) {
		CustomUser user = (CustomUser)auth.getPrincipal();
		
		String memberseq = user.getMemberseq();
		
		List<SecondhandDTO> list = service.getMyStore(memberseq);
		
		model.addAttribute("list", list);
		
		return "secondhand/mystore";
		
	}
	
}
