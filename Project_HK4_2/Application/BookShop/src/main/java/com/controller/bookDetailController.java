package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entity.Book;
import com.entity.Cart;
import com.entity.Category;
import com.entity.Comment;
import com.service.bookService;
import com.service.categoryService;
import com.service.commentService;


@Controller
@RequestMapping("/bookDetai")
@SessionAttributes(value = {"member","cart","memberid"})
public class bookDetailController {

	@Autowired
	bookService bookSer;
	
	@Autowired
	categoryService cateSer;
	@Autowired
	commentService commentSer;
	@GetMapping("/{bookId}")
	public String Default(@PathVariable int bookId ,ModelMap modelMap, HttpSession session) {
		modelMap.addAttribute("member", session.getAttribute("member"));
		modelMap.addAttribute("member", session.getAttribute("memberid"));
		Book book = (Book) bookSer.findById(bookId);
		List<Category> bookCategory = cateSer.findAll(1);
		List<Comment> listcmt = commentSer.findById(bookId);
		if(null != session.getAttribute("cart")) {
			List<Cart> list = (List<Cart>) session.getAttribute("cart");
			modelMap.addAttribute("numberBookOnCart", list.size());
		}
		modelMap.addAttribute("book", book);
		modelMap.addAttribute("bookCategory", bookCategory);
		modelMap.addAttribute("listcmt", listcmt);
		
		return "bookDetail";
	}
}
