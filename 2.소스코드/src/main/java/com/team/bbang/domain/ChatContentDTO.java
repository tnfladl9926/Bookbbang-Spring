package com.team.bbang.domain;

import lombok.Data;

@Data
public class ChatContentDTO {
	
	private String chatcontentseq;
	private String chatroomseq;
	private String memberseq;
	private String field;
	private String regdate;
	
	private String nickname;
	
	private String status;
	//상태구분하는 변수
	private String code;
}
