package com.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Cart;


@Controller
@RequestMapping("cart/")
public class shoppingCartController {

	@GetMapping
	public String Default(HttpSession session, ModelMap modelMap) {
		if(null != session.getAttribute("cart")) {
			List<Cart> carts = (List<Cart>) session.getAttribute("cart");
			modelMap.addAttribute("numberBookOnCart", carts.size());
			modelMap.addAttribute("cart", carts);
		}
		
		return "cart";
	}
}
