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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.HaUI.DoAnTotNghiep.entity.CategoryEntity;
import edu.HaUI.DoAnTotNghiep.entity.ProductEntity;
import edu.HaUI.DoAnTotNghiep.service.CategoryService;
import edu.HaUI.DoAnTotNghiep.service.ProductService;

@Controller
public class AdminProductController {

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductService productService;

	@RequestMapping(value = { "/admin/product" }, method = RequestMethod.GET)
	public String adminProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		return "admin/product";
	}

	@RequestMapping(value = { "/admin/addproduct" }, method = RequestMethod.GET)
	public String adminAddProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {

		List<CategoryEntity> categories = categoryService.findAll();
		model.addAttribute("category", categories);
		model.addAttribute("product", new ProductEntity());

		return "admin/addproduct";
	}

	@RequestMapping(value = { "/admin/addproduct" }, method = RequestMethod.POST)
	public String adminAddProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("product") ProductEntity productEntity,
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("productPictures") MultipartFile[] productPictures) throws Exception {

		if (productEntity.getId() == null || productEntity.getId() <= 0) {
			productService.save(productEntity, productAvatar, productPictures);
		} else {
			productService.edit(productEntity, productAvatar, productPictures);
		}

		return "admin/addproduct";
	}

	@RequestMapping(value = { "/admin/editproduct/{productId}" }, method = RequestMethod.GET)
	public String editProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("productId") int productId) throws IOException {
		ProductEntity product = productService.getById(productId);
		List<CategoryEntity> categories = categoryService.findAll();
		model.addAttribute("category", categories);
		model.addAttribute("product", product);
		return "admin/addproduct";
	}

}