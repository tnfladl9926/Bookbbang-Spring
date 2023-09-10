package com.team.bbang.domain;

import lombok.Data;

@Data
public class CartDTO {
	
	private String cartseq; //장바구니 번호
	private String memberseq; //회원번호
	private String bookseq; //도서번호
	
	private String title; //도서 제목
	private String price; //도서 가격
	private String image; //도서 표지
	

}
