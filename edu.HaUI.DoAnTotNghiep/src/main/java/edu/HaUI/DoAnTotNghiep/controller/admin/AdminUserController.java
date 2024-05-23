package edu.HaUI.DoAnTotNghiep.controller.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.HaUI.DoAnTotNghiep.dto.Search;
import edu.HaUI.DoAnTotNghiep.entity.CategoryEntity;
import edu.HaUI.DoAnTotNghiep.entity.UserEntity;
import edu.HaUI.DoAnTotNghiep.service.UserService;

@Controller
public class AdminUserController extends BaseController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = { "/admin/user" }, method = RequestMethod.GET)
	public String adminHome(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String keyword = request.getParameter("keyword");
		int totalUser = userService.findAll().size();
		int totalPageUser = totalUser / userService.getSIZE_OF_PAGE();
		if(totalUser % userService.getSIZE_OF_PAGE() != 0) {
			totalPageUser++;
		}
		Search s = new Search();
		s.setKeyword(keyword);
		s.setPage(getCurrentPage(request));
		model.addAttribute("user", userService.findAll());
		model.addAttribute("totalPageUser", totalPageUser);
		return "admin/user";
	}
	
	@RequestMapping(value = { "/admin/adduser" }, method = RequestMethod.GET)
	public String adminAddCategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		model.addAttribute("adduser", new UserEntity());
		return "admin/adduser";
	}

}
