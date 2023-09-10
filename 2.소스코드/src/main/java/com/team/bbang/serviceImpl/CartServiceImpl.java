package com.team.bbang.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.CartDTO;
import com.team.bbang.mapper.CartMapper;
import com.team.bbang.service.CartService;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartMapper mapper;
	
	@Override
	public List<CartDTO> getList(String memberseq) {
		
		return mapper.getList(memberseq);
	}
	
//	@Override
//	public int cartdel(String memberseq, String bookseq) {
//		// TODO Auto-generated method stub
//		CartDTO dto = new CartDTO();
//		dto.setMemberseq(memberseq);
//		dto.setBookseq(bookseq);
//		
//		return mapper.cartdel(dto);
//	}
	@Override
	public int cartdel(String memberseq, String bookseq) {
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("memberseq", memberseq);
		map.put("bookseq", bookseq);
		
		return mapper.cartdel(map);
	}
	
	@Override 
	public int cartAdd(String memberseq, String bookseq) {
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("memberseq", memberseq);
		map.put("bookseq", bookseq);
		
		return mapper.cartAdd(map);
	}

}
