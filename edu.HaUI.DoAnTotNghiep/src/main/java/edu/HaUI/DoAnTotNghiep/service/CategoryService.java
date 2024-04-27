package edu.HaUI.DoAnTotNghiep.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import edu.HaUI.DoAnTotNghiep.entity.CategoryEntity;

@Service
public class CategoryService extends BaseService<CategoryEntity> {
	
	@Override
	protected Class<CategoryEntity> clazz() {
		return CategoryEntity.class;
	}
	
	@Transactional
	public CategoryEntity save(CategoryEntity categoryEntity) {
		return super.saveOrUpdate(categoryEntity);
	}
	
	@Transactional
	public CategoryEntity edit(CategoryEntity categoryEntity) {
		return super.saveOrUpdate(categoryEntity);
	}

}