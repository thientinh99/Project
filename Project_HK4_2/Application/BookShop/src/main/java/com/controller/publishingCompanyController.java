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

import com.entity.PublishingCompany;
import com.service.publishingCompanyService;

@Controller
@RequestMapping("/dashboard/publishingCompany")
public class publishingCompanyController {

	@Autowired
	publishingCompanyService publishingCompanyService;
	
	@GetMapping
	public String Default(ModelMap modelMap) {
		List<PublishingCompany> list = publishingCompanyService.findAll(0);
		List<PublishingCompany> listfindAll = publishingCompanyService.findAll(-1);
		double tongsopage = Math.ceil((double) listfindAll.size() / 4);
		modelMap.addAttribute("list", list);
		modelMap.addAttribute("list1", listfindAll);
		modelMap.addAttribute("tongsopage", tongsopage);
		return "publishingCompany";
	}
	//vào trang add author
	@GetMapping(value = "/addNewPublishingCompany")
	public String AddNewPublishingCompanyGet() {
		return "AddNewPublishingCompany";
	}
	//thực hiện chức năng add author
	@PostMapping(value = "/addNewPublishingCompany")
	public String AddNewPublishingCompanyPost(@RequestParam String publishingName, @RequestParam String address,
			@RequestParam String description, RedirectAttributes redirectAttributes) {
		try {
			PublishingCompany publishingCompany = new PublishingCompany();
			publishingCompany.setPublishingName(publishingName);
			publishingCompany.setAddress(address);
			publishingCompany.setDescription(description);
			publishingCompanyService.save(publishingCompany);
			redirectAttributes.addFlashAttribute("messagesuccess", "Successfully added publishing company");
			return "redirect:/dashboard/publishingCompany";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Add publishing company failed");
			return "redirect:/dashboard/publishingCompany";
		}
	}
	//vào trang update author
	@GetMapping(value = "/{publishingCompanyId}")
	public String findByIdPublishingCompanyGet(@PathVariable int publishingCompanyId, ModelMap modelMap) {
		List<PublishingCompany> list = publishingCompanyService.findById(publishingCompanyId);
		modelMap.addAttribute("list", list);
		return "UpdatePublishingCompany";
	}
	//thực hiện chức năng update author
	@PostMapping(value = "/{publishingCompanyId}")
	public String findByIdPublishingCompanyPost(@PathVariable int publishingCompanyId, @RequestParam String publishingName,
			@RequestParam String address, @RequestParam String description, RedirectAttributes redirectAttributes) {
		boolean check = publishingCompanyService.update(publishingCompanyId, publishingName, address, description);
		if (check) {
			redirectAttributes.addFlashAttribute("messagesuccess", "Update Successfully");
			return "redirect:/dashboard/publishingCompany";
		} else {
			redirectAttributes.addFlashAttribute("message", "Update Faild");
			return "redirect:/dashboard/publishingCompany";
		}
	}
	//thực hiện chức năng delete author
	@GetMapping(value = "/delete/{publishingCompanyId}")
	public String DeletePublishingCOmpany(@PathVariable int publishingCompanyId, RedirectAttributes redirectAttributes) {
		try {
			publishingCompanyService.delete(publishingCompanyId);
			redirectAttributes.addFlashAttribute("messagesuccess", "Delete Successfully");
			return "redirect:/dashboard/publishingCompany";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Delete Faild");
			return "redirect:/dashboard/publishingCompany";
		}
	}
}
