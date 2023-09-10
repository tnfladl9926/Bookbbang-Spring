package com.team.bbang.mapper;

import java.util.List;
import java.util.Map;

import com.team.bbang.domain.ChatContentDTO;
import com.team.bbang.domain.ChatRoomDTO;

public interface ChatMapper {

	List<ChatContentDTO> getChat(String chatroomseq);

	String getOtherName(String chatroomseq);

	void inLog(Map<String, String> map);

	void outLog(ChatContentDTO dto);

	void insertChat(ChatContentDTO dto);

	String checkRoom(ChatRoomDTO dto);

	int createChatroom(ChatRoomDTO dto);

	String getMaxseq();

	String getSeller(String memberseq);

	String getSellerName(String chatroomseq);

	void test(ChatRoomDTO dto);


}
