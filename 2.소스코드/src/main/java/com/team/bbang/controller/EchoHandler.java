package com.team.bbang.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.team.bbang.domain.ChatContentDTO;
import com.team.bbang.service.ChatService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class EchoHandler extends TextWebSocketHandler{
	
	@Autowired
	private ChatService service;
	
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

	//연결 됐을 때 리스트 등록
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		sessionList.add(session);
		log.info(session.getPrincipal().getName() + " 회원 입장\n");
		
	}

	//메세지 보내기
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		log.info(message.getPayload() + "\n");
		
		Gson gson = new Gson();
		
		ChatContentDTO dto = gson.fromJson(message.getPayload(), ChatContentDTO.class);
		
		if(dto.getCode().equals("1")) {
			service.inLog(dto.getMemberseq(), dto.getChatroomseq());
			
		}else if(dto.getCode().equals("2")) {
			service.insertChat(dto);
			
			for(WebSocketSession s : sessionList) {
				if(s != session) {
					s.sendMessage(message);
				}
			}
			
		}else if(dto.getCode().equals("3")) {
			service.outLog(dto);
		}
	}
	//연결 종료 > 세션해제
	//거의 컨트롤러마냥 사용해야함
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessionList.remove(session);
		
		String name = session.getPrincipal().getName();
		
		log.info("채팅방 퇴장자: " + name);
		
		
	}
	
}
