package edu.HaUI.DoAnTotNghiep.service;

import org.springframework.stereotype.Service;

import edu.HaUI.DoAnTotNghiep.entity.ProductImageEntity;

@Service
public class ProductImageService extends BaseService<ProductImageEntity> {
	
	@Override
	protected Class<ProductImageEntity> clazz() {
		return ProductImageEntity.class;
	}
	

}
