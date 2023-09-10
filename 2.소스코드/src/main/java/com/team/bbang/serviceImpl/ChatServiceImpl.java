package com.team.bbang.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.ChatContentDTO;
import com.team.bbang.domain.ChatRoomDTO;
import com.team.bbang.mapper.ChatMapper;
import com.team.bbang.service.ChatService;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	private ChatMapper mapper;
	
	@Override
	public List<ChatContentDTO> getChat(String chatroomseq) {
		
		return mapper.getChat(chatroomseq);
	}
	
	@Override
	public String getOtherName(String chatroomseq) {

		return mapper.getOtherName(chatroomseq);
	}
	
	@Override
	public String getSeller(String memberseq) {

		return mapper.getSeller(memberseq);
	}
	
	@Override
	public String checkRoom(ChatRoomDTO dto) {
		
		return mapper.checkRoom(dto);
	}
	
	@Override
	public int createChatroom(ChatRoomDTO dto) {
		
		return mapper.createChatroom(dto);
	}
	
	@Override
	public void inLog(String memberseq, String chatroomseq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("memberseq", memberseq);
		map.put("chatroomseq", chatroomseq);
		
		log.info("입장 로그 기록중..");
		
		mapper.inLog(map);
		
	}
	
	@Override
	public void outLog(ChatContentDTO dto) {
		log.info("퇴장 로그 기록중..");
		
		mapper.outLog(dto);
		
	}
	
	@Override
	public void insertChat(ChatContentDTO dto) {
		log.info("insert작업하는중..");
		
		mapper.insertChat(dto);
	}
	
	@Override
	public String getMaxseq() {
		
		return mapper.getMaxseq();
	}
	
	@Override
	public String getSellerName(String chatroomseq) {

		return mapper.getSellerName(chatroomseq);
	}
	
	@Override
	public void test(ChatRoomDTO dto) {

		mapper.test(dto);
		
	}
	
}
