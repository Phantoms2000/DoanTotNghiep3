package edu.HaUI.DoAnTotNghiep.service;

import org.springframework.stereotype.Service;

import edu.HaUI.DoAnTotNghiep.dto.Constants;
import edu.HaUI.DoAnTotNghiep.entity.SaleOrderEnitity;

@Service
public class SaleOrderService extends BaseService<SaleOrderEnitity> implements Constants {
	
	@Override
	protected Class<SaleOrderEnitity> clazz() {
		return SaleOrderEnitity.class;
	}

}
