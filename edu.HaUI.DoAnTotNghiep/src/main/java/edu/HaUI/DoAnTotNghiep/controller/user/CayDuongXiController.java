package edu.HaUI.DoAnTotNghiep.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CayDuongXiController {
	
	@RequestMapping(value = {"/cayDuongXi"}, method = RequestMethod.GET)
	public String cayDuongXi(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException {
		return "user/cayduongxi";
	}

}
