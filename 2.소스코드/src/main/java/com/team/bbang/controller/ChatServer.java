package com.team.bbang.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.config.annotation.WebSocketTransportRegistration;

import com.google.gson.Gson;
import com.team.bbang.domain.ChatContentDTO;
import com.team.bbang.service.ChatService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@ServerEndpoint("/chat/server.do")
public class ChatServer {
	
	@Autowired
	private ChatService service;
	
	private static List<Session> sessionList = new ArrayList<Session>();

	@OnOpen
	public void handleOpen(Session session) {
		sessionList.add(session);

		sessionList.indexOf(session);
		
		log.info((this.service == null) + "현재 객체가 없어요.");

		log.info("접속 성공");
	}

	@OnMessage
	public void handleMessage(String msg, Session session) {
		Gson gson = new Gson();

		ChatContentDTO dto = gson.fromJson(msg, ChatContentDTO.class);
		
		log.info(dto);
		
		if (dto.getCode().equals("1")) {
			
		} else if (dto.getCode().equals("2")) {
			service.insertChat(dto);
			
			try {

				for (Session s : sessionList) {
					if (s != session) {
						s.getBasicRemote().sendText(msg);
					}
				}

			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		else if (dto.getCode().equals("3")) {
			service.outLog(dto);
		}
	}

	@OnError
	public void handleError(Throwable e) {

	}

	@OnClose
	public void handleClose(Session session) {
		
		log.info("접속해제 합니다..");
		
		int num = sessionList.indexOf(session);

		sessionList.remove(num);

	}
	
	private WebSocketTransportRegistration web = new WebSocketTransportRegistration();
	
	
}
