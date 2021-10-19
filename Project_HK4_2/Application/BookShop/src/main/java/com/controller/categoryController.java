package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.entity.Category;
import com.service.categoryService;

@Controller
@RequestMapping("/dashboard/category")
public class categoryController {

	@Autowired
	categoryService categoryservice;
	// vào trang mặt định author
	@GetMapping
	public String Default(ModelMap modelMap) {
		List<Category> list = categoryservice.findAll(0);
		List<Category> listfindAll = categoryservice.findAll(-1);
		double tongsopage = Math.ceil((double) listfindAll.size() / 4);
		modelMap.addAttribute("list", list);
		modelMap.addAttribute("list1", listfindAll);
		modelMap.addAttribute("tongsopage", tongsopage);
		return "Category";
	}
	//vào trang add author
	@GetMapping(value = "/addNewCategory")
	public String AddNewCategoryGet() {
		return "AddNewCategory";
	}
	//thực hiện chức năng add author
	@PostMapping(value = "/addNewCategory")
	public String AddNewCategoryPost(@RequestParam String name,
			@RequestParam String description, RedirectAttributes redirectAttributes) {
		try {
			Category category = new Category();
			category.setName(name);
			category.setDescription(description);
			category.setStatus(true);
			categoryservice.save(category);
			redirectAttributes.addFlashAttribute("messagesuccess", "Successfully added category");
			return "redirect:/dashboard/category";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Add category failed");
			return "redirect:/dashboard/category";
		}
	}
	//vào trang update author
	@GetMapping(value = "/{categoryId}")
	public String findByIdCategoryGet(@PathVariable int categoryId, ModelMap modelMap) {
		List<Category> list = categoryservice.findById(categoryId);
		modelMap.addAttribute("list", list);
		return "UpdateCategory";
	}
	//thực hiện chức năng update author
	@PostMapping(value = "/{categoryId}")
	public String findByIdCategoryPost(@PathVariable int categoryId, @RequestParam String name,
			@RequestParam int status, @RequestParam String description, RedirectAttributes redirectAttributes) {
		boolean check = categoryservice.update(categoryId, name, status, description);
		if (check) {
			redirectAttributes.addFlashAttribute("messagesuccess", "Update Successfully");
			return "redirect:/dashboard/category";
		} else {
			redirectAttributes.addFlashAttribute("message", "Update Faild");
			return "redirect:/dashboard/category";
		}
	}
	//thực hiện chức năng delete author
	@GetMapping(value = "/delete/{categoryId}")
	public String DeleteCategory(@PathVariable int categoryId, RedirectAttributes redirectAttributes) {
		try {
			categoryservice.delete(categoryId);
			redirectAttributes.addFlashAttribute("messagesuccess", "Delete Successfully");
			return "redirect:/dashboard/category";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Delete Faild");
			return "redirect:/dashboard/category";
		}
	}
}
