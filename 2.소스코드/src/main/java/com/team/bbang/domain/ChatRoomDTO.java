package com.team.bbang.domain;

import lombok.Data;

@Data
public class ChatRoomDTO {
	
	private String chatroomseq;
	private String secondhandseq;
	private String smemberseq; // 판매자 회원 번호
	private String bmemberseq; // 구매자 회원 번호
	
	private String nickname; // 구매자 nickname
	
	private String cnt;
}
