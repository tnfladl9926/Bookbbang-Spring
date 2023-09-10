package com.team.bbang.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.bbang.domain.BookDTO;
import com.team.bbang.domain.CouponDTO;
import com.team.bbang.domain.DeliveryDTO;
import com.team.bbang.domain.PaymentDTO;
import com.team.bbang.service.BookService;
import com.team.bbang.service.PaymentService;
import com.team.security.CustomUser;

@Controller
@RequestMapping("/payment")
public class PaymentController {

   @Autowired
   private BookService service;
   
   @Autowired
   private PaymentService serviceP;
  
   @GetMapping("/payment.do")
   public String payment(Model model, String[] bookseq, String memberseq) {
      
      
      //동현
      List<DeliveryDTO> dlist = serviceP.dlist(memberseq);
      
      String membername = dlist.get(0).getMembername().toString();
      String phonenumber = dlist.get(0).getPhonenumber().toString();
      String address = dlist.get(0).getAddress().toString();
      
      
      model.addAttribute("dlist",dlist);
      model.addAttribute("membername",membername);
      model.addAttribute("phonenumber",phonenumber);
      model.addAttribute("address",address);
      
      //진섭
      
      //진섭 결제 금액 출력
       List<BookDTO> dtoList = new ArrayList<>();
       List<Integer> nList = new ArrayList<>(); 
       
       int total = 0;
       
      for(int i=0; i< bookseq.length; i++) {
         
      //   System.out.println(bookseq[i]);

         List<BookDTO> dto = service.getPrice(bookseq[i]);
           dtoList.addAll(dto);
         
      //     System.out.println(dtoList); 
           
           String priceString = dtoList.get(i).getPrice();
            String priceWithoutComma = priceString.replace(",", "");
           
           nList.add(Integer.parseInt(priceWithoutComma));

         total = total + nList.get(i);
      
      //   System.out.println(total);
      }
         
      model.addAttribute("total",total);
       
      //진섭 결제 쿠폰 적용
      
   //   System.out.println(memberseq);
      List<CouponDTO> dto = serviceP.getCoupon(memberseq);
      
   //  System.out.println(dto);
   
      model.addAttribute("dto",dto);
      
      //진섭 결제 책정보 뽑아오기

         List<BookDTO> bdtoList = new ArrayList<>();
      
      for(int i=0; i<bookseq.length; i++) {
      
      List<BookDTO> bdto = service.getBook(bookseq[i]);
      bdtoList.addAll(bdto);
      
   //   System.out.println(bdtoList);
      }

      model.addAttribute("bdtoList",bdtoList);
      
      return "payment/payment";
   } //payment

   @PostMapping("/paymentok.do")
   public String paymentok(Model model, DeliveryDTO dto, String dvseq) {
      
//      System.out.println("addressaname:" + dto.getAddressaname());
      
      String address = dto.getAddress1() + " " + dto.getAddress2();
      String phonenumber = dto.getPhone1() + "-" + dto.getPhone2() + "-" + dto.getPhone3();
      dto.setAddress(address);
      dto.setPhonenumber(phonenumber);
      
//      System.out.println("memberseq :" +dto.getMemberseq());
      
      System.out.println(dto);
      serviceP.deliveryinsert(dto);
   
      /* return "redirect:/payment/payment.do?memberseq="+dto.getMemberseq(); */
      return "redirect:/cart/cart.do?memberseq="+dto.getMemberseq();
      
   }
   
   @PostMapping("/paymentok2.do")
   @ResponseBody
   public DeliveryDTO paymentok2(String dvseq) {
      
      DeliveryDTO dto = serviceP.deliveryinfo(dvseq);

      return dto;
   }
   
   
   public String paymentOrder(Authentication auth, PaymentDTO dto) {
	   CustomUser user = (CustomUser) auth.getPrincipal();
	   dto.setMemberseq(user.getMemberseq());
	   
	   service.paymentOrder(dto);
	   
	   return "completeorder";
   }
   
   
}