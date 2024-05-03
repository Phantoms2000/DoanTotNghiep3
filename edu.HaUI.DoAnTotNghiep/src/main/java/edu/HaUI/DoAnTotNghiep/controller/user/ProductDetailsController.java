package edu.HaUI.DoAnTotNghiep.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.HaUI.DoAnTotNghiep.entity.ProductEntity;
import edu.HaUI.DoAnTotNghiep.service.ProductService;

@Controller
public class ProductDetailsController {

	@Autowired
	ProductService productService;

	@RequestMapping(value = { "/chitietsanpham/{Id}" }, method = RequestMethod.GET)
	public String cayDuongXi(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("Id") int Id) throws IOException {
		ProductEntity pe = productService.getById(Id);
		model.addAttribute("productDetails", pe);
		return "user/chitietsanpham";
	}

}
