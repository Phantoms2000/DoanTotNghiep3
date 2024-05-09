package edu.HaUI.DoAnTotNghiep.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.HaUI.DoAnTotNghiep.dto.Search;
import edu.HaUI.DoAnTotNghiep.entity.CategoryEntity;
import edu.HaUI.DoAnTotNghiep.service.CategoryService;

@Controller
public class AdminCategoryController extends BaseController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = { "/admin/category" }, method = RequestMethod.GET)
	public String adminCategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		String keyword = request.getParameter("keyword");
		int totalCategory = categoryService.findAll().size();
		int totalPageCategory = totalCategory / categoryService.getSIZE_OF_PAGE();
		if(totalCategory % categoryService.getSIZE_OF_PAGE() != 0) {
			totalPageCategory++;
		}
		Search s = new Search();
		s.setKeyword(keyword);
		s.setPage(getCurrentPage(request));
		model.addAttribute("category", categoryService.search(s));
		model.addAttribute("totalPageCategory", totalPageCategory);
		return "admin/category";
	}

	@RequestMapping(value = { "/admin/addcategory" }, method = RequestMethod.GET)
	public String adminAddCategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		model.addAttribute("addcategory", new CategoryEntity());
		return "admin/addcategory";
	}

	@RequestMapping(value = { "/admin/addcategory" }, method = RequestMethod.POST)
	public String adminAddCategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("addcategory") CategoryEntity categoryEntity)
			throws IOException {
		if (categoryEntity.getId() == null || categoryEntity.getId() <= 0) {
			categoryService.save(categoryEntity);
		} else {
			categoryService.edit(categoryEntity);
		}
		return "admin/addcategory";
	}

	@RequestMapping(value = { "/admin/editcategory/{categoryId}" }, method = RequestMethod.GET)
	public String adminEditCategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("categoryId") int categoryId) throws IOException {
		CategoryEntity categoryEdit = categoryService.getById(categoryId);
		model.addAttribute("addcategory", categoryEdit);
		return "admin/addcategory";
	}

}
