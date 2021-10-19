package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entity.Book;
import com.entity.Category;
import com.service.bookService;
import com.service.categoryService;

@Controller
@RequestMapping(value = {"/","/index"})
@SessionAttributes(value = { "member", "catId" })
public class IndexClientController {
	@Autowired
	bookService bookservice;
	@Autowired
	categoryService categorySer;
	@GetMapping
	public String TrangChu(ModelMap modelMap,HttpSession httpSession) {
		String member = (String) httpSession.getAttribute("member");
		modelMap.addAttribute("member", member);
		List<Book> list = bookservice.findAll(0);
		List<Category> listCategory = categorySer.findAll(-1);
		List<Book> listfindAll = bookservice.findAll(-1);
		double tongsopage = Math.ceil((double) listfindAll.size() / 4);
		modelMap.addAttribute("listCategory", listCategory);
		modelMap.addAttribute("list", list);
		modelMap.addAttribute("list1", listfindAll);
		modelMap.addAttribute("tongsopage", tongsopage);
		return "client/index";
	}	
}
