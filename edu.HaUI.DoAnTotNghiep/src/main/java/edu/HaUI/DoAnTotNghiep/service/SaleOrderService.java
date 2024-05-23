package edu.HaUI.DoAnTotNghiep.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import edu.HaUI.DoAnTotNghiep.dto.Constants;
import edu.HaUI.DoAnTotNghiep.dto.Search;
import edu.HaUI.DoAnTotNghiep.entity.SaleOrderEntity;

@Service
public class SaleOrderService extends BaseService<SaleOrderEntity> implements Constants {
	
	@Override
	protected Class<SaleOrderEntity> clazz() {
		return SaleOrderEntity.class;
	}
	
	public List<SaleOrderEntity> search(Search search) {
		String sql = "SELECT * FROM tbl_saleorder so WHERE 1=1";
		if (!StringUtils.isEmpty(search.getKeyword())) {
			sql += " and (so.code like '%" + search.getKeyword() + "%')";
		}
		return executeNativeSql(sql, search.getPage());
	}

}
