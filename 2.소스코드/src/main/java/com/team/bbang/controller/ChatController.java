package com.team.bbang.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.team.bbang.domain.ChatContentDTO;
import com.team.bbang.domain.ChatRoomDTO;
import com.team.bbang.service.ChatService;
import com.team.security.CustomUser;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/chat")
@Log4j
public class ChatController {

	@Autowired
	private ChatService service;

	// 채팅방 입장시 호출되는 컨트롤러라서 입장할때 처리해야하는 작업 작성
	@GetMapping("/chatroom.do")
	public String chatIn(Model model, String chatroomseq, Authentication auth) {
		CustomUser user = (CustomUser) auth.getPrincipal();

		String memberseq = user.getMemberseq();
		String myNick = user.getNickname(); 
		
		List<ChatContentDTO> list = service.getChat(chatroomseq);
		model.addAttribute("list", list);
		String smemberseq = service.getSeller(chatroomseq);
		
		String otherName = "";
		if(smemberseq.equals(memberseq)) {
			otherName = service.getOtherName(chatroomseq);
		}else {
			otherName = service.getSellerName(chatroomseq);
		}

		model.addAttribute("otherName", otherName);
		model.addAttribute("chatroomseq", chatroomseq);
		model.addAttribute("memberseq", memberseq);
		model.addAttribute("myNick", myNick);
		return "chat/chatroom";
	}
	
	@ResponseBody
	@RequestMapping("/checkroom.do")
	public String checkRoom(String data) {
		
		Gson gson = new Gson();
		ChatRoomDTO dto = gson.fromJson(data, ChatRoomDTO.class);
		
		String chatroomseq = service.checkRoom(dto);
		
		if(chatroomseq == null) {
			service.createChatroom(dto);
			//log.info("방금 등록한 PK: " + dto.getChatroomseq());
			service.test(dto);
			
			String newRoom = service.getMaxseq();
			
			return newRoom;
		}
		
		return chatroomseq;
	}
}
