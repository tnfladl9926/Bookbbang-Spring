package com.team.bbang.controller;

import java.security.Principal;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.bbang.domain.CartDTO;
import com.team.bbang.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired  
	private CartService cartService;
	
	@GetMapping("/cart.do")
	public String cart(Model model, String memberseq, Principal principal) {
		
//		System.out.println(principal.getName());
		
		List<CartDTO> getList = cartService.getList(memberseq);
		
		model.addAttribute("getList", getList);
		
		return "cart/cart";
	}
	
	@GetMapping("/cartdel.do")
	public String cartdel(Model model, String memberseq, String bookseq) {
		
		
		int cartdel = cartService.cartdel(memberseq, bookseq);
		
		model.addAttribute("cartdel", cartdel);
		
		return "redirect:/cart/cart.do?memberseq=" + memberseq;
	}
	
	@GetMapping("/cartadd.do")
	public String cartAdd(Model model, String memberseq, String bookseq) {
		
		int cartAdd = cartService.cartAdd(memberseq, bookseq);
		
		
		return "redirect:/cart/cart.do?memberseq=" + memberseq;
	}
	
	@GetMapping("/cartall.do")
	public String cartall(Model model, String memberseq, String[] bookseq) {
		
		
		System.out.println(Arrays.toString(bookseq));
		
		for (int i=0;i<bookseq.length;i++) {
			cartService.cartAdd(memberseq, bookseq[i]);
		}
		
		return "redirect:/cart/cart.do?memberseq=" + memberseq;
	}

}
