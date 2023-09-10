package com.team.bbang.domain;

import lombok.Data;

@Data
public class ChatLogDTO {
	private String chatlogseq;
	private String chatroomseq;
	private String memberseq;
	private String regdate;
	private String status;
	
	private String code;
}
