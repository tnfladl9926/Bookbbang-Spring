package com.team.security;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.team.bbang.domain.MemberDTO;

import lombok.Getter;

@Getter
public class CustomUser extends User {

	private MemberDTO member;

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	public CustomUser(MemberDTO dto) {
		// MemberDTO > Custom(User)
		// 부모클래스 매개변수에 변환부분이 들어감.
		super(dto.getId(), dto.getPw(), dto.getRoleList().stream()
				.map(authority -> new SimpleGrantedAuthority(authority.getAuthority())).collect(Collectors.toList()));

		this.member = dto;
	}
	
	//JSP에서 세션을 호출하고 싶은 Member테이블 프로퍼티들을 getter로 만들어놓으면.
	//<sec:authentication property="principal.memberseq"/> 등으로 호출할 수 있으니 참고해 다들
	//만약 getEmail을 만들었다면.
	//<sec:authentication property="principal.email"/>
	public String getMemberseq() {
		return member.getMemberseq();
	}
	
	public String getAddress() {
		return member.getAddress();
	}
	
	public String getNickname() {
		return member.getNickname();
	}
	
}
