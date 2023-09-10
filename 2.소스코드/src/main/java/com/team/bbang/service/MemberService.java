package com.team.bbang.service;

import java.util.List;

import com.team.bbang.domain.DeliveryDTO;
import com.team.bbang.domain.MemberDTO;

public interface MemberService {

	void register(MemberDTO dto);

	int idcheck(String id);

	int nickcheck(String nickname);

	void registerrole();

	MemberDTO myInfo(String pname);

	void updateInfo(String pname, String newPw);

	int mycart(String pname);
	
	String myname(String pname);

	List<MemberDTO> mydelivery(String pname);

	void mydeliinsert(DeliveryDTO dto, String pname);

	List<DeliveryDTO> getaddess(String pname);

	int mycoupon(String pname);

	int addDel(DeliveryDTO ddDto);

	DeliveryDTO getDel(String seq);

	List<MemberDTO> getpay(String pname);

	int delcount(String pname);



}
