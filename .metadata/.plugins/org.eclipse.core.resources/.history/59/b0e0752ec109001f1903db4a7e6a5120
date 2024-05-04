package edu.HaUI.DoAnTotNghiep.controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.HaUI.DoAnTotNghiep.dto.Cart;
import edu.HaUI.DoAnTotNghiep.dto.CartItem;
import edu.HaUI.DoAnTotNghiep.entity.ProductEntity;
import edu.HaUI.DoAnTotNghiep.entity.SaleOrderEnitity;
import edu.HaUI.DoAnTotNghiep.entity.SaleOrderProductEntity;
import edu.HaUI.DoAnTotNghiep.service.ProductService;
import edu.HaUI.DoAnTotNghiep.service.SaleOrderService;

@Controller
public class CartController {

	@Autowired
	ProductService productService;

	@Autowired
	SaleOrderService saleOrderService;

	@RequestMapping(value = "/cart/finish", method = RequestMethod.POST)
	public String cartFinish(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String customerName = request.getParameter("customerName");
		String customerAddress = request.getParameter("customerAddress");
		String customerPhone = request.getParameter("customerPhone");
		String customerEmail = request.getParameter("customerEmail");
		if (!customerName.isEmpty() && !customerAddress.isEmpty() && !customerPhone.isEmpty() && !customerEmail.isEmpty()) {
			SaleOrderEnitity saleOrderEnitity = new SaleOrderEnitity();
			saleOrderEnitity.setCustomerName(customerName);
			saleOrderEnitity.setCustomerAddress(customerAddress);
			saleOrderEnitity.setCustomerPhone(customerPhone);
			saleOrderEnitity.setCustomerEmail(customerEmail);
			String code = "MHD" + Integer.toString(new Random().nextInt(9000) + 1000);
			saleOrderEnitity.setCode(code);
			HttpSession session = request.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			for (CartItem cartItem : cart.getCartItems()) {
				SaleOrderProductEntity saleOrderProductEntity = new SaleOrderProductEntity();
				saleOrderProductEntity.setProduct2(productService.getById(cartItem.getProductId()));
				saleOrderProductEntity.setQuality(cartItem.getQuality());
				saleOrderEnitity.addSaleOrderProducts(saleOrderProductEntity);
			}
			model.addAttribute("alert", "Mua hàng thành công");
			saleOrderService.saveOrUpdate(saleOrderEnitity);
			session.setAttribute("cart", null);
		}
		return "user/cart";
	}

	@RequestMapping(value = "/cart/view", method = RequestMethod.GET)
	public String cartView(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "user/cart";
	}

	@RequestMapping(value = { "/cart/add" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addToCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem newItem) throws IOException {

		HttpSession session = request.getSession();
		Cart cart = null;
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		List<CartItem> cartItems = cart.getCartItems();
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == newItem.getProductId()) {
				isExists = true;
				item.setQuality(item.getQuality() + newItem.getQuality());
			}
		}
		if (!isExists) {
			ProductEntity productInDB = productService.getById(newItem.getProductId());
			newItem.setProductName(productInDB.getTitle());
			newItem.setPriceUnit(productInDB.getPrice());
			cart.getCartItems().add(newItem);
		}
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);

	}

	private int getTotalItems(final HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") == null) {
			return 0;
		}
		Cart cart = (Cart) session.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();
		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuality();
		}
		return total;
	}

}
