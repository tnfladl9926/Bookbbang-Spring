package com.team.bbang.domain;

import java.util.List;

import lombok.Data;

@Data
public class SecondhandDTO {
	private String secondhandseq; //거래번호
	private String title;	//제목
	private String content;	//내용
	private String regdate;	//날짜
	private String memberseq;	//회원번호
	private String price;	//가격
	private String status; //거래상태
	private String address; //거래위치
	private String nickname; //회원 닉네임
	
	private int hour; //시간..
	
	private String domainImg; //목록에서 보여질 사진
	
	private List<SecondhandImgDTO> imgList;	//이미지
	private List<ChatRoomDTO> chatList;
	
	
}
