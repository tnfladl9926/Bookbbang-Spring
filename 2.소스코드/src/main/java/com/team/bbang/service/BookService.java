package com.team.bbang.service;

import java.util.List;

import com.team.bbang.domain.BookDTO;
import com.team.bbang.domain.Pager;
import com.team.bbang.domain.PaymentDTO;

public interface BookService {

	public List<BookDTO> bookList(String field, String genre, String order, Pager pager);

	List<BookDTO> booknav(String field);

//	List<BookDTO> bookadd(String title, String writer, String field, String genre, String price, String publisher, String inventory, String regdate, String salesrate, String explain, String image);

	public List<BookDTO> booklistadmin();

	public void bookadd(BookDTO dto);

	List<BookDTO> bookdetailadmin(String bookseq);

	List<BookDTO> bookgenre(String field);

	public List<BookDTO> bookview(String bookseq, String field);

	void bookeditadminok(BookDTO dto);

	public int getBookListCnt();

	public List<BookDTO> getPrice(String string);

	public List<BookDTO> getBook(String string);

	public void paymentOrder(PaymentDTO dto);

}
