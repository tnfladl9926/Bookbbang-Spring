package com.team.bbang.service;

import java.util.List;

import com.team.bbang.domain.CartDTO;


public interface CartService {
	
	public List<CartDTO> getList(String memberseq);

	//public int cartdel(String memberseq, String bookseq);
	public int cartdel(String memberseq, String bookseq);
	
	public int cartAdd(String memberseq, String bookseq);

}
