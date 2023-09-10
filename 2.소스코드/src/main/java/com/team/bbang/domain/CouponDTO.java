package com.team.bbang.domain;

import lombok.Data;

@Data
public class CouponDTO {

	private String memberseq;
	private String couponseq;
	private String name;
	private int rate;
	private String deadline;
	private String use;
	private String count;
}
