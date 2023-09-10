package com.team.bbang.domain;

import lombok.Data;

@Data
public class BulFreeDTO {
	
	private String bulboardseq;
	private String title;
	private String content;
	private String regdate;
	private String type;
	private String likecount;
	private String memberseq;
	private String viewcount;
	
	private String nickname;
	
	private String name;
	private String pname;
	
}

//			bulboardseq number not null primary key, 
//			title varchar2(100) not null,
//			content varchar2(4000) not null,
//			regdate date default sysdate not null, 
//			type varchar2(30) not null, 
//			likecount number not null, 
//			memberseq number not null references member(memberseq)