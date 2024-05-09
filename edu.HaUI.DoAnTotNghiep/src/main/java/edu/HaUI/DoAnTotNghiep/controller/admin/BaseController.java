package edu.HaUI.DoAnTotNghiep.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import edu.HaUI.DoAnTotNghiep.entity.UserEntity;

public abstract class BaseController {
	
	public int getCurrentPage(HttpServletRequest request) {
		try {
			String indexPage = request.getParameter("page");
			if(indexPage == null) {
				indexPage = "1";
			}
			int index = Integer.parseInt(indexPage);
			return index - 1;
		} catch (Exception e) {
			return -1;
		}
	}
	
	@ModelAttribute("isLogined")
	public boolean isLogined() {
		boolean isLogined = false;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			isLogined = true;
		}
		return isLogined;
	}
	
	@ModelAttribute("userLogined")
	public UserEntity getUserLogined() {
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(userLogined != null && userLogined instanceof UserDetails)
			return (UserEntity) userLogined;
		
		return null;
	}
	
	@ModelAttribute("AdminTitle")
	public String adminTitle() {
		return "ADMIN";
	}

}
