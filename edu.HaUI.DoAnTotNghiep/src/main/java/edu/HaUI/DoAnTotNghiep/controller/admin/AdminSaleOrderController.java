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
import edu.HaUI.DoAnTotNghiep.service.SaleOrderService;

@Controller
public class AdminSaleOrderController extends BaseController {
	@Autowired
	SaleOrderService saleOrderService;

	@RequestMapping(value = { "/admin/saleorder" }, method = RequestMethod.GET)
	public String adminHome(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String keyword = request.getParameter("keyword");
		int totalSaleOrder = saleOrderService.findAll().size();
		int totalPageSaleOrder = totalSaleOrder / saleOrderService.getSIZE_OF_PAGE();
		if(totalSaleOrder % saleOrderService.getSIZE_OF_PAGE() != 0) {
			totalPageSaleOrder++;
		}
		Search s = new Search();
		s.setKeyword(keyword);
		s.setPage(getCurrentPage(request));
		model.addAttribute("saleorder", saleOrderService.search(s));
		model.addAttribute("totalPageSaleOrder", totalPageSaleOrder);
		return "admin/saleorder";
	}

}
