package edu.HaUI.DoAnTotNghiep.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import edu.HaUI.DoAnTotNghiep.dto.Search;
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

	public List<CategoryEntity> search(Search search) {
		String sql = "SELECT * FROM tbl_category c WHERE 1=1";
		if (!StringUtils.isEmpty(search.getKeyword())) {
			sql += " and (c.name like '%" + search.getKeyword() + "%')";
		}
		return executeNativeSql(sql, search.getPage());
	}

}
