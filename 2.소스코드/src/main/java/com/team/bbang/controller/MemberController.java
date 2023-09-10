package com.team.bbang.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.team.bbang.domain.DeliveryDTO;
import com.team.bbang.domain.MemberDTO;
import com.team.bbang.service.MemberService;
import com.team.security.CustomUser;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/login.do")
	public String login(Model model) {
		
		return "member/login";
	}
	
	@GetMapping("/logout.do")
	public String logout() {
		
		
		return "member/logout";
	}
	
	@GetMapping("/register.do")
	public String register() {
		
		
		return "member/register";
	}
	
	
	@PostMapping("/idcheck.do" )
	@ResponseBody
	public int idcheck(Model model, String id) {
		
		int cnt = service.idcheck(id);
		
		return cnt;
	}
	
	@PostMapping("/nickcheck.do" )
	@ResponseBody
	public int nickcheck(Model model, String nickname) {
		
		int cnt = service.nickcheck(nickname);
		
		return cnt;
	}
	
	@PostMapping("/registerok.do")
	public String registerok(MemberDTO dto) {
		
		String address = dto.getAddress1() + " " + dto.getAddress2();
		String tel = dto.getTel1() + "-" + dto.getTel2() + "-" + dto.getTel3();
		
		dto.setAddress(address);
		dto.setTel(tel);
		
		service.register(dto);
		service.registerrole();
		
		
		return "redirect:/member/login.do";
	}
	
	@GetMapping("/findid.do")
	public String findid() {
		
		
		return "member/findid";
	}
	
	@GetMapping("/findpw.do")
	public String findpw() {
		
		
		return "member/findpw";
	}
	
	
	
	@GetMapping("/mypagemain.do")
	   public String mypagemain(Model model, String memberseq, Principal principal) {
	      
	   String pname = principal.getName();
	      
	   int result = service.mycart(pname);
	   String name = service.myname(pname);
	   
	   int couponResult = service.mycoupon(pname);
	   
	//   System.out.println(couponResult);
	   
	   List<MemberDTO> paylist = service.getpay(pname);
	   
	   System.out.println(paylist);
	   
	   
	   model.addAttribute("couponResult", couponResult);
	   model.addAttribute("result", result);
	   model.addAttribute("name",name);
	   model.addAttribute("paylist",paylist);

	      
	      return "member/mypagemain";
	   }
	   
	   @GetMapping("/mypageedit.do")
	   public String mypageedit(Model model,  Principal principal)   {
	      
	      String pname = principal.getName();
	      
	      int result = service.mycart(pname);
	      String name = service.myname(pname);
	      
	      MemberDTO dto = service.myInfo(pname);
	      
	      int couponResult = service.mycoupon(pname);

	      
	      
	      
	      model.addAttribute("couponResult", couponResult);
	      model.addAttribute("dto",dto);
	      model.addAttribute("result", result);
	      model.addAttribute("name",name);
	      return "member/mypageedit";
	   }
	   
	   @PostMapping("/mypageedit.do")
	   public String mypageeditU(Model model,String newPw,  Principal principal) {
	      String pname = principal.getName();
	      
	      
	      int result = service.mycart(pname);
	      String name = service.myname(pname);
	      MemberDTO dto = service.myInfo(pname);
	      
	      model.addAttribute("dto",dto);

	      int couponResult = service.mycoupon(pname);
	      
	      model.addAttribute("couponResult", couponResult);
	      
	      //System.out.println(newPw);
	      model.addAttribute("result", result);
	      model.addAttribute("name",name);
	    service.updateInfo(principal.getName(), newPw);
	      
	      
	      
	      return "member/mypageedit";
	   }
	   
	   @GetMapping("/mypagedelivery.do")
	   public String mypagedelivery(Model model, Principal principal)   {
	      //공통 좌측 바
	      String pname = principal.getName();
	      int result = service.mycart(pname);
	      String name = service.myname(pname);
	      
	      model.addAttribute("result", result);
	      model.addAttribute("name",name);
	      
	      
	      //배송지  출력
	      List<DeliveryDTO> ddto = service.getaddess(pname);
	      //System.out.println(ddto);
	      
	      model.addAttribute("ddto",ddto);
	      
	      //배송지 개수 출력
	      int deliverycount = service.delcount(pname);
	      
	      model.addAttribute("deliverycount",deliverycount );
	      
	      //쿠폰수 출력
	      int couponResult = service.mycoupon(pname);
	      model.addAttribute("couponResult", couponResult);

	      
	      
	      return "member/mypagedelivery";
	   }
	   
	   @ResponseBody
	   @PostMapping("/mypagedelivery.do")
	   public DeliveryDTO mypagedeliveryI(Model model, Principal principal, String data, DeliveryDTO dto, Authentication auth, String delseq) {
	      //공통 좌측 바
	      String pname = principal.getName();
	   
	      int result = service.mycart(pname);
	      String name = service.myname(pname);
	      
	      
	      model.addAttribute("result", result);
	      model.addAttribute("name",name);
	      
	      //쿠폰 수 출력
	      int couponResult = service.mycoupon(pname);
	      
	      model.addAttribute("couponResult", couponResult);
	      
	      
	      
	      //배송지 등록
	      
	       //ajax 등록
	      CustomUser user = (CustomUser)auth.getPrincipal();
	      String mseq = user.getMemberseq();
	      
	   
	      Gson dataAdd = new Gson();
	      
	      DeliveryDTO ddDto = dataAdd.fromJson(data, DeliveryDTO.class);

	      ddDto.setMemberseq(mseq);

	      System.out.println(ddDto);
	      
	      int seq = service.addDel(ddDto);

	      //배송지 삭제
	      
	      System.out.println(delseq + "아이작스삭제");
	      
	      
	      
	      return ddDto;
	      
	      //ddDto
	      
	      
	   }
	
}
