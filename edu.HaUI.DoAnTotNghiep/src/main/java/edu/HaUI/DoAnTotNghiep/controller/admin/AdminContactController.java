package edu.HaUI.DoAnTotNghiep.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.HaUI.DoAnTotNghiep.entity.ContactEntity;
import edu.HaUI.DoAnTotNghiep.service.ContactService;

@Controller
public class AdminContactController extends BaseController {

	@Autowired
	ContactService contactService;

	@RequestMapping(value = { "/admin/contact" }, method = RequestMethod.GET)
	public String adminHome(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		List<ContactEntity> contact = contactService.findAll();
		model.addAttribute("contactadmin", contact);
		return "admin/contact";
	}

}
