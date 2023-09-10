package com.team.bbang.service;

import java.util.List;

import com.team.bbang.domain.ChatContentDTO;
import com.team.bbang.domain.ChatRoomDTO;

public interface ChatService {

	List<ChatContentDTO> getChat(String chatroomseq);

	String getOtherName(String chatroomseq);

	void inLog(String memberseq, String chatroomseq);

	void outLog(ChatContentDTO dto);

	void insertChat(ChatContentDTO dto);

	String checkRoom(ChatRoomDTO dto);

	int createChatroom(ChatRoomDTO dto);

	String getMaxseq();

	String getSeller(String memberseq);

	String getSellerName(String chatroomseq);

	void test(ChatRoomDTO dto);


}
