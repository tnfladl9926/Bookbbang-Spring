package com.team.bbang.domain;

import lombok.Data;

@Data
public class PaymentDTO {
	private String paymentseq;
	private String memberseq;
	private String name;
	private String address;
	private String tel;
	private String pay;
	private String[] bookseq;
	private String couponseq;
	
	private String[] cartseq;
	
	private String serialNum;
}

	   
	   