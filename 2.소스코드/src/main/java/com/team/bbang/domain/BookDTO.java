package com.team.bbang.domain;

import lombok.Data;

@Data
public class BookDTO {
	
	private String bookseq; //도서번호
	private String title; //제목
	private String writer; //저자
	private String field; //분야
	private String genre; //장르
	private String price; //가격
	private String publisher; //출판사
	private String inventory; //재고
	private String regdate; //출판일자
	private String salesrate; //판매량
	private String explain; //설명
	private String image; //이미지
	
	
	

}
