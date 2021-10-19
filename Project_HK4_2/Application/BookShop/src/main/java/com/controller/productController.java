package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Book;
import com.entity.Category;
import com.service.bookService;
import com.service.productService;

@Controller
@RequestMapping(value = {"/product"})
public class productController {
	@Autowired
	productService productservice;
	
	@GetMapping
	public String TrangChu(ModelMap modelMap,HttpSession httpSession) {
		String member = (String) httpSession.getAttribute("member");
		List<Book> list = productservice.findAll(0);
		List<Book> listfindAll = productservice.findAll(-1);
		Category category = new Category();
		category.setCategoryId(1);
		Book book = new Book();
		book.setCategoryId(category);
		List<Book> catId1 = productservice.findByCatId(1);
		double tongsopage = Math.ceil((double) listfindAll.size() / 15);
		modelMap.addAttribute("list", list);
		modelMap.addAttribute("catId1", catId1);
		modelMap.addAttribute("list1", listfindAll);
		modelMap.addAttribute("tongsopage", tongsopage);
		return "client/shop";
	}
	@GetMapping("/{bookId}")
	public String FindByIdBook(@PathVariable int bookId,ModelMap modelMap) {
		List<Book> listfindbyId = productservice.findById(bookId);
		modelMap.addAttribute("listfindbyId", listfindbyId);
		List<Book> listfindAll = productservice.findAll(-1);
		modelMap.addAttribute("list1", listfindAll);
		return "client/bookDetail";
	}
}
