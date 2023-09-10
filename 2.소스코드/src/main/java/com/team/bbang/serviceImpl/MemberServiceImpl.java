package com.team.bbang.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.DeliveryDTO;
import com.team.bbang.domain.MemberDTO;
import com.team.bbang.mapper.MemberMapper;
import com.team.bbang.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;

	@Override
	public void register(MemberDTO dto) {

		mapper.register(dto);

	}

	@Override
	public int idcheck(String id) {

		return mapper.idcheck(id);
	}

	@Override
	public int nickcheck(String nickname) {

		return mapper.nickcheck(nickname);
	}

	@Override
	public void registerrole() {

		mapper.registerrole();

	}

	@Override
	public MemberDTO myInfo(String pname) {

		MemberDTO dto = mapper.myInfo(pname);

		return dto;
	}

	@Override
	public void updateInfo(String pname, String newPw) {

		Map<String, String> dtoU = new HashMap<>();
		dtoU.put("pname", pname);
		dtoU.put("newPw", newPw);

		mapper.updateInfo(dtoU);

	}

	@Override
	public int mycart(String pname) {

		return mapper.mycart(pname);
	}

	@Override
	public String myname(String pname) {

		return mapper.myname(pname);
	}

	@Override
	public List<MemberDTO> mydelivery(String pname) {

		return mapper.mydelivery(pname);
	}

	@Override
	public void mydeliinsert(DeliveryDTO dto, String pname) {

		mapper.mydeliinsert(dto, pname);

	}

	@Override
	public List<DeliveryDTO> getaddess(String pname) {

		return mapper.getaddress(pname);
	}

	@Override
	public int mycoupon(String pname) {

		return mapper.mycoupon(pname);
	}

	@Override
	public int addDel(DeliveryDTO ddDto) {

		return mapper.addDel(ddDto);
	}

	@Override
	public DeliveryDTO getDel(String seq) {

		return mapper.getDel(seq);
	}

	@Override
	public List<MemberDTO> getpay(String pname) {

		return mapper.getpay(pname);
	}

	@Override
	public int delcount(String pname) {

		return mapper.delcount(pname);
	}
}
