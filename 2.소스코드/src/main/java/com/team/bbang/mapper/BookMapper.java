package com.team.bbang.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.team.bbang.domain.BookDTO;
import com.team.bbang.domain.PaymentDTO;

public interface BookMapper {

	List<BookDTO> bookList(Map<String, String> map);

	List<BookDTO> booknav(String field);

	List<BookDTO> booklistadmin();

	void bookadd(BookDTO dto);

	List<BookDTO> bookdetailadmin(String bookseq);

	List<BookDTO> bookgenre(String field);

	public List<BookDTO> bookview(Map<String, String> map);

	void bookeditadminok(BookDTO dto);

	int getBookListCnt();

	List<BookDTO> getPrice(String string);

	List<BookDTO> getBook(String string);

	void delmembercoupon(PaymentDTO dto);

	void delCart(PaymentDTO dto);

	int insertPayment(PaymentDTO dto);

	void insertorderbook(PaymentDTO dto);

}
