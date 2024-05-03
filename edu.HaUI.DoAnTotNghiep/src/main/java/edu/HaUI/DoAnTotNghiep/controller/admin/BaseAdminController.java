package edu.HaUI.DoAnTotNghiep.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ModelAttribute;

public abstract class BaseAdminController {
	
	public int getCurrentPage(HttpServletRequest request) {
		try {
			return Integer.parseInt(request.getParameter("page")) - 1;
		} catch (Exception e) {
			return -1;
		}
	}
	
	@ModelAttribute("AdminTitle")
	public String getAdminLogined() {
		return "ADMIN";
	}

}
