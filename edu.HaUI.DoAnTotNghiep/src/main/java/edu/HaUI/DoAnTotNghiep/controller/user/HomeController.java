package edu.HaUI.DoAnTotNghiep.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.HaUI.DoAnTotNghiep.controller.admin.BaseController;
import edu.HaUI.DoAnTotNghiep.dto.Search;
import edu.HaUI.DoAnTotNghiep.service.ProductService;

@Controller
public class HomeController extends BaseController {

	@Autowired
	ProductService productService;

	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String home(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String keyword = request.getParameter("keyword");
		int totalProduct = productService.findAll().size();
		int totalPageHome = totalProduct / productService.getSIZE_OF_PAGE();
		if(totalProduct % productService.getSIZE_OF_PAGE() != 0) {
			totalPageHome++;
		}
		Search s = new Search();
		s.setKeyword(keyword);
		s.setPage(getCurrentPage(request));
		model.addAttribute("listproduct", productService.search(s));
		model.addAttribute("totalPageHome", totalPageHome);
		return "user/home";
	}

}
