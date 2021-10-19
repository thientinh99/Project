package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Category;
import com.entity.Comment;
import com.service.commentService;

@Controller
@RequestMapping("/dashboard/comment")
public class commentController {
	@Autowired
	commentService commentSer;
	@GetMapping
	public String Default(ModelMap modelMap) {
		List<Comment> list = commentSer.findAll(0);
		List<Comment> listfindAll = commentSer.findAll(-1);
		double tongsopage = Math.ceil((double) listfindAll.size() / 10);
		modelMap.addAttribute("list", list);
		modelMap.addAttribute("list1", listfindAll);
		modelMap.addAttribute("tongsopage", tongsopage);
		return "comment";
	}
	@GetMapping("/{cmtId}")
	public String Default(@PathVariable int cmtId,ModelMap modelMap) {
		List<Comment> list = commentSer.findByCmtId(cmtId);
		modelMap.addAttribute("list", list);
		return "detailsComment";
	}
	public commentController() {
	
	}

}
