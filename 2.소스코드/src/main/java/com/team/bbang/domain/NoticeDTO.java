package com.team.bbang.domain;

import lombok.Data;

@Data
public class NoticeDTO {

	private String noticeseq;
	private String title;
	private String content;
	private String regdate;
	private String memberseq;
	private String viewcnt;
	private String rnum;
}
