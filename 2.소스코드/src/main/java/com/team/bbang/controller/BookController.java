package com.team.bbang.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.bbang.domain.BookDTO;
import com.team.bbang.domain.Pager;
import com.team.bbang.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private BookService bookService;
	@Autowired
	private Pager pager;
	
	@GetMapping("/booklist.do")
	public String booklist(Model model, 
						   String field, 
						   String genre, 
						   Principal principal, 
						   String order, 
						   @RequestParam(required=false, defaultValue = "1") int page,
						   @RequestParam(required=false, defaultValue = "1") int range) {
		System.out.println(genre);
		System.out.println(field);
		System.out.println(page);
		System.out.println(range);
		
		int totalListCnt = bookService.getBookListCnt();
		
		pager.pageInfo(page, range, totalListCnt);
		
		
		
		List<BookDTO> bookList = bookService.bookList(field, genre, order, pager);
		List<BookDTO> booknav = bookService.booknav(field);
	    
	    model.addAttribute("booknav", booknav);
		model.addAttribute("pager", pager);
		model.addAttribute("bookList", bookList);
		
		return "book/booklist";
	}
	
	@GetMapping("/booknav.do")
	public String booknav(Model model, String field) {
	    
	    return "book/booknav";
	}
	
	@GetMapping("/bookadd.do")
	public String bookadd(Model model) {
		
		return "book/bookadd";
	}
	
	@PostMapping("/bookaddok.do")
	public String bookaddok(Model model, BookDTO dto) {
		
		bookService.bookadd(dto);
		
		return "redirect:/book/booklistadmin.do";
	}
	
	//관리자 도서 등록 리스트 페이지
	@GetMapping("/booklistadmin.do")
	public String booklist(Model model, Principal principal) {
		
		List<BookDTO> booklistadmin = bookService.booklistadmin();
	    		
		model.addAttribute("booklistadmin", booklistadmin);
		
		return "book/booklistadmin";
	}
	
	//관리자 도서 상세
	@GetMapping("/bookdetailadmin.do")
	public String bookdetailadmin(Model model, String bookseq) {
		
		List<BookDTO> bookdetailadmin = bookService.bookdetailadmin(bookseq);
		
		model.addAttribute("bookdetailadmin", bookdetailadmin);
		
		return "book/bookdetailadmin";
	}
	
	//관리자 도서 수정
	@GetMapping("/bookeditadmin.do")
	public String bookeditadmin(Model model, String bookseq) {
		
		List<BookDTO> bookdetailadmin = bookService.bookdetailadmin(bookseq);
		
		model.addAttribute("bookdetailadmin", bookdetailadmin);
		
		return "book/bookeditadmin";
	}
	
	//관리자 도서 수정확인
	@PostMapping("/bookeditadminok.do")
	public String bookeditadminok(Model model, BookDTO dto) {
		
		System.out.println("dto: " + dto);
		
		bookService.bookeditadminok(dto);
		
		return "redirect:/book/booklistadmin.do";
	}
	
	@PostMapping("/bookgenre.do")
	@ResponseBody
	public List<BookDTO> bookgenre(String field) {
		
		System.out.println("field : " + field);
		
	    List<BookDTO> bookgenre = bookService.bookgenre(field);

	    return bookgenre;
	}
	
	
	//지우
	@GetMapping("/bookview.do")
	public String bookview(Model model, String bookseq, String field, Principal principal) {
		
		List<BookDTO> bookview = bookService.bookview(bookseq, field);
		
		List<BookDTO> booknav = bookService.booknav(field);
	    
	    model.addAttribute("booknav", booknav);
		
		model.addAttribute("bookview", bookview);
		
		return "book/bookview";
	}
	
	
	
	//메인에 띄울 bestseller
//	@GetMapping("/bestseller.do")
//	public void bestseller(Model model) {
//		
//		return;
//	}
	 
	
}
