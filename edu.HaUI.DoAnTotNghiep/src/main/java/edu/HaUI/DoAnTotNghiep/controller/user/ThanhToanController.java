package edu.HaUI.DoAnTotNghiep.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.HaUI.DoAnTotNghiep.controller.admin.BaseController;

@Controller
public class ThanhToanController extends BaseController {
	
	@RequestMapping(value = {"/thanhToan"}, method = RequestMethod.GET)
	public String thanhToan(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException {
		return "user/thanhtoan";
	}

}
