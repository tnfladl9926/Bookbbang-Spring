package com.team.bbang.mapper;

import java.util.List;
import java.util.Map;

import com.team.bbang.domain.CartDTO;

public interface CartMapper {

	List<CartDTO> getList(String memberseq);
	
	//List<CartDTO> cartdel(String memberseq, String bookseq);
	int cartdel(Map<String, String> map);

	int cartdel(CartDTO dto);
	
	int cartAdd(Map<String, String> map);

}
