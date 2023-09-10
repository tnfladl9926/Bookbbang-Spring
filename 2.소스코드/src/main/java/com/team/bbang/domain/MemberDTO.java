package com.team.bbang.domain;

import java.util.List;

import lombok.Data;

@Data
public class MemberDTO {
	private String memberseq;
	private String id;
	private String pw;
	private String nickname;
	private String name;
	private String tel;
	private String tel1;
	private String tel2;
	private String tel3;
	private String address;
	private String birth;
	private String email;
	private String newPw;
	private String newPw2;
	
	private String title;
	private String inventory;
	private String price;
	private String image;
	private String checknum;
	private String regdate;
	
	private String address1;
	private String address2;
	
	
	private List<RoleDTO> roleList;
}
