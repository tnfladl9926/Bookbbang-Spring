package com.team.bbang.domain;

import lombok.Data;

@Data
public class BulCommentDTO {
	
	private String bulcommentseq;
	private String content;
	private String regdate;
	private String memberseq;
	private String bulboardseq;
	private String depth;
	private String thread;
	
	private String nickname;
	
	private String count;
	
	private String pname;
	
	private String title;
}
