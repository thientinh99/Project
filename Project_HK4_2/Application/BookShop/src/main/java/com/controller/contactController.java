package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entity.Book;
import com.entity.Category;
import com.service.bookService;
import com.service.productService;

@Controller
@RequestMapping(value = {"/contact"})
@SessionAttributes(value = { "member", "catId" })
public class contactController {
	@Autowired
	productService productservice;
	
	@GetMapping
	public String TrangChu(ModelMap modelMap,HttpSession httpSession) {
		String member = (String) httpSession.getAttribute("member");
		return "client/contact";
	}

}
