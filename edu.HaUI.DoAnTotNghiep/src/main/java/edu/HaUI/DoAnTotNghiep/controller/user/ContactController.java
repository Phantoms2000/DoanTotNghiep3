package edu.HaUI.DoAnTotNghiep.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.HaUI.DoAnTotNghiep.controller.admin.BaseController;
import edu.HaUI.DoAnTotNghiep.dto.Contact;
import edu.HaUI.DoAnTotNghiep.entity.ContactEntity;
import edu.HaUI.DoAnTotNghiep.service.ContactService;

@Controller
public class ContactController extends BaseController {

	@Autowired
	ContactService contactService;

	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("contact", new Contact());
		model.addAttribute("contact", new ContactEntity());
		return "user/contact";
	}

	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
	public String saveContact(final ModelMap model, final HttpServletRequest request,
			@ModelAttribute("contact") Contact contact, @ModelAttribute("contactadmin") ContactEntity contactEnity,
			final HttpServletResponse response) throws IOException {
		String fname = contact.getFname();
		String lname = contact.getLname();
		String phoneNumber = contact.getPhoneNumber();
		String email = contact.getEmail();
		String message = contact.getMessage();
		if (!fname.isEmpty() && !lname.isEmpty() && !phoneNumber.isEmpty() && !email.isEmpty() && !message.isEmpty()) {
			model.addAttribute("notification",
					"Cảm ơn bạn " + fname + " " + lname + " đã gửi thông báo! Chúc bạn một ngày tốt lành");
			contactService.save(contactEnity);
		}
		return "user/contact";
	}

}
