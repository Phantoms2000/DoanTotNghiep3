package edu.HaUI.DoAnTotNghiep.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.HaUI.DoAnTotNghiep.entity.UserEntity;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	
	@Autowired
	UserService userService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserEntity userEntity = userService.loadUserByUsername(username);
		return userEntity;
	}

}
