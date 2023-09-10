package com.team.bbang.service;

import java.util.List;

import com.team.bbang.domain.CouponDTO;
import com.team.bbang.domain.DeliveryDTO;

public interface PaymentService {

	List<DeliveryDTO> dlist(String mbseq);

	void deliveryinsert(DeliveryDTO dto);

	DeliveryDTO deliveryinfo(String dvseq);
	
	List<CouponDTO> getCoupon(String memberseq);
}
