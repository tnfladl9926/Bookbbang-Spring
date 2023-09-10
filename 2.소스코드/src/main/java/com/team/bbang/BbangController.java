package com.team.bbang;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.team.security.CustomUser;

@Controller
public class BbangController {
	
	
	@GetMapping("/bbang.do")
	public String bbang(Authentication authentication, Model model) {
		CustomUser customUser = (CustomUser) authentication.getPrincipal();
		String memberseq = customUser.getMemberseq();
		
		model.addAttribute("memberseq", memberseq);
		
		return "bbang";
	}
}
