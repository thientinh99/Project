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

import com.entity.Discount;
import com.service.discountService;

@Controller
@RequestMapping("/dashboard/discount")
public class discountController {

	@Autowired
	discountService discountservice;
	// vào trang mặt định author
	@GetMapping
	public String Default(ModelMap modelMap) {
		List<Discount> list = discountservice.findAll(0);
		List<Discount> listfindAll = discountservice.findAll(-1);
		double tongsopage = Math.ceil((double) listfindAll.size() / 4);
		modelMap.addAttribute("list", list);
		modelMap.addAttribute("list1", listfindAll);
		modelMap.addAttribute("tongsopage", tongsopage);
		return "discount";
	}
	//vào trang add author
	@GetMapping(value = "/addNewCategory")
	public String AddNewDiscountGet() {
		return "AddNewDiscount";
	}
	//thực hiện chức năng add author
	@PostMapping(value = "/addNewDiscount")
	public String AddNewDiscountPost(@RequestParam String name, @RequestParam boolean status, RedirectAttributes redirectAttributes) {
		try {
			Discount discount = new Discount();
			discount.setName(name);
			discount.setStatus(status);
			discountservice.save(discount);
			redirectAttributes.addFlashAttribute("messagesuccess", "Successfully added Discount");
			return "redirect:/dashboard/discount";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Add Discount failed");
			return "redirect:/dashboard/discount";
		}
	}
	//vào trang update author
	@GetMapping(value = "/{discountId}")
	public String findByIdDiscountGet(@PathVariable int discountId, ModelMap modelMap) {
		List<Discount> list = discountservice.findById(discountId);
		modelMap.addAttribute("list", list);
		return "UpdateDiscount";
	}
	//thực hiện chức năng update author
	@PostMapping(value = "/{discountId}")
	public String findByIdDiscountPost(@PathVariable int discountId, @RequestParam String name,
			@RequestParam boolean status, RedirectAttributes redirectAttributes) {
		boolean check = discountservice.update(discountId, name, status);
		if (check) {
			redirectAttributes.addFlashAttribute("messagesuccess", "Update Successfully");
			return "redirect:/dashboard/discount";
		} else {
			redirectAttributes.addFlashAttribute("message", "Update Faild");
			return "redirect:/dashboard/discount";
		}
	}
	//thực hiện chức năng delete author
	@GetMapping(value = "/delete/{discountId}")
	public String DeleteDiscount(@PathVariable int discountId, RedirectAttributes redirectAttributes) {
		try {
			discountservice.delete(discountId);
			redirectAttributes.addFlashAttribute("messagesuccess", "Delete Successfully");
			return "redirect:/dashboard/discount";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Delete Faild");
			return "redirect:/dashboard/discount";
		}
	}
}
