package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.entity.Author;
import com.service.authorService;

@Controller
@RequestMapping("/dashboard/author")
public class authorController {
	@Autowired
	authorService authorservice;
	// vào trang mặt định author
	@GetMapping
	public String Default(ModelMap modelMap) {
		List<Author> list = authorservice.findAll(0);
		List<Author> listfindAll = authorservice.findAll(-1);
		double tongsopage = Math.ceil((double) listfindAll.size() / 4);
		modelMap.addAttribute("list", list);
		modelMap.addAttribute("list1", listfindAll);
		modelMap.addAttribute("tongsopage", tongsopage);
		return "author";
	}
	//vào trang add author
	@GetMapping(value = "/addNewAuthor")
	public String AddNewAuthorGet() {
		return "AddNewAuhor";
	}
	//thực hiện chức năng add author
	@PostMapping(value = "/addNewAuthor")
	public String AddNewAuthorPost(@RequestParam String txtName, @RequestParam String txtPseudonym,
			@RequestParam String txtAge, @RequestParam String txtDomicile, RedirectAttributes redirectAttributes) {
		try {
			Author author = new Author();
			author.setName(txtName);
			author.setPseudonym(txtPseudonym);
			author.setAge(Integer.parseInt(txtAge));
			author.setDomicile(txtDomicile);
			authorservice.save(author);
			redirectAttributes.addFlashAttribute("messagesuccess", "Successfully added author");
			return "redirect:/dashboard/author";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Add author failed");
			return "redirect:/dashboard/author";
		}
	}
	//vào trang update author
	@GetMapping(value = "/{authorId}")
	public String findByIdAuthorGet(@PathVariable int authorId, ModelMap modelMap) {
		List<Author> list = authorservice.findById(authorId);
		modelMap.addAttribute("list", list);
		return "UpdateAuthor";
	}
	//thực hiện chức năng update author
	@PostMapping(value = "/{authorId}")
	public String findByIdAuthorPost(@PathVariable int authorId, @RequestParam String txtName,
			@RequestParam String txtPseudonym, @RequestParam String txtAge, @RequestParam String txtDomicile,
			RedirectAttributes redirectAttributes) {
		int age = Integer.parseInt(txtAge);
		boolean check = authorservice.update(authorId, txtName, txtPseudonym, age, txtDomicile);
		if (check) {
			redirectAttributes.addFlashAttribute("messagesuccess", "Update Successfully");
			return "redirect:/dashboard/author";
		} else {
			redirectAttributes.addFlashAttribute("message", "Update Faild");
			return "redirect:/dashboard/author";
		}
	}
	//thực hiện chức năng delete author
	@GetMapping(value = "/delete/{authorId}")
	public String DeleteAuthor(@PathVariable int authorId, RedirectAttributes redirectAttributes) {
		try {
			authorservice.delete(authorId);
			redirectAttributes.addFlashAttribute("messagesuccess", "Delete Successfully");
			return "redirect:/dashboard/author";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Delete Faild");
			return "redirect:/dashboard/author";
		}
	}
}
