package com.team.bbang.mapper;

import java.util.List;
import java.util.Map;

import com.team.bbang.domain.DeliveryDTO;
import com.team.bbang.domain.MemberDTO;

public interface MemberMapper {

	public MemberDTO login(String username);

	public void register(MemberDTO dto);

	public int idcheck(String id);

	public int nickcheck(String nickname);

	public void registerrole();
	
	public MemberDTO myInfo(String pname);

	public void updateInfo(Map<String, String> dtoU);

	public int mycart(String pname);

	public String myname(String pname);

	public List<MemberDTO> mydelivery(String pname);

	public void mydeliinsert(DeliveryDTO dto, String pname);

	public List<DeliveryDTO> getaddress(String pname);

	public int mycoupon(String pname);

	public List<DeliveryDTO> addDelivery(DeliveryDTO dto, String pname);

	int addDel(DeliveryDTO ddDto);

	public DeliveryDTO getDel(String seq);

	public List<MemberDTO> getpay(String pname);

	public int delcount(String pname);

}
