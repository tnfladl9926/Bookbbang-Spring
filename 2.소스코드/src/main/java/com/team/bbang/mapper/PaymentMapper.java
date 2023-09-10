package com.team.bbang.mapper;

import java.util.List;

import com.team.bbang.domain.CouponDTO;
import com.team.bbang.domain.DeliveryDTO;

public interface PaymentMapper {

	List<DeliveryDTO> dlist(String memberseq);

	void deliveryinsert(DeliveryDTO dto);

	DeliveryDTO deliveryinfo(String dvseq);

	List<CouponDTO> getCoupon(String memberseq);
}
