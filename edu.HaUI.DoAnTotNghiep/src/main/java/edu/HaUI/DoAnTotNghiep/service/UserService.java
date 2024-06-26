package edu.HaUI.DoAnTotNghiep.service;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.HaUI.DoAnTotNghiep.entity.UserEntity;

@Service
public class UserService extends BaseService<UserEntity> {
	
	@Override
	protected Class<UserEntity> clazz() {
		return UserEntity.class;
	}
	
	public UserEntity loadUserByUsername(String userName) {
		String sql = "select * from tbl_user u where u.username = '" + userName + "'";
		List<UserEntity> users = this.executeNativeSql(sql, -1);
		if(users == null || users.size() <= 0) return null;
		return users.get(0);
	}

}
