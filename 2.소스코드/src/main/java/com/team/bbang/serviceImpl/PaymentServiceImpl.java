package com.team.bbang.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.CouponDTO;
import com.team.bbang.domain.DeliveryDTO;
import com.team.bbang.mapper.PaymentMapper;
import com.team.bbang.service.PaymentService;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentMapper mapper;

	@Override
	public List<DeliveryDTO> dlist(String memberseq) {

		return mapper.dlist(memberseq);
	}

	@Override
	public void deliveryinsert(DeliveryDTO dto) {

		mapper.deliveryinsert(dto);

	}

	@Override
	public DeliveryDTO deliveryinfo(String dvseq) {

		return mapper.deliveryinfo(dvseq);
	}

	@Override
	public List<CouponDTO> getCoupon(String memberseq) {

		return mapper.getCoupon(memberseq);
	}
}
