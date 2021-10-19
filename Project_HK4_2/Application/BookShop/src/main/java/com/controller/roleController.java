package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.entity.Author;
import com.entity.Role;
import com.service.roleService;

@Controller
@RequestMapping("/dashboard/role")
public class roleController {
	@Autowired
	roleService roleservice;
	
//	
	// vào trang mặt định role
		@GetMapping
		public String Default(ModelMap modelMap) {
			List<Role> list = roleservice.findAll(0);
			List<Role> listfindAll = roleservice.findAll(-1);
			double tongsopage = Math.ceil((double) listfindAll.size() / 4);
			modelMap.addAttribute("list", list);
			modelMap.addAttribute("list1", listfindAll);
			modelMap.addAttribute("tongsopage", tongsopage);
			return "role";
		}
		//vào trang add role
		@GetMapping(value = "/addNewRole")
		public String AddNewRoleGet() {
			return "AddNewROle";
		}
		
		//thực hiện chức năng add author
		@PostMapping(value = "/addNewRole")
		public String AddNewRolePost(@RequestParam String txtName,
				/* @RequestParam boolean status, */ RedirectAttributes redirectAttributes) {
			try {
				Role role = new Role();
				role.setName(txtName);
				/* role.setStatus(status); */
				roleservice.save(role);
				redirectAttributes.addFlashAttribute("messagesuccess", "Successfully added role");
				return "redirect:/dashboard/author";
			} catch (Exception e) {
				redirectAttributes.addFlashAttribute("message", "Add role failed");
				return "redirect:/dashboard/role";
			}
		}
		//vào trang update author
		@GetMapping(value = "/{roleId}")
		public String findByIdRoleGet(@PathVariable int roleId, ModelMap modelMap) {
			List<Role> list = roleservice.findById(roleId);
			modelMap.addAttribute("list", list);
			return "UpdateRole";
		}
		//thực hiện chức năng update author
		@PostMapping(value = "/{roleId}")
		public String findByIdRolePost(@PathVariable int roleId, @RequestParam String name,  @RequestParam boolean status, RedirectAttributes redirectAttributes) {
			boolean check = roleservice.update(roleId, name, status);
			if (check) {
				redirectAttributes.addFlashAttribute("messagesuccess", "Update Successfully");
				return "redirect:/dashboard/role";
			} else {
				redirectAttributes.addFlashAttribute("message", "Update Faild");
				return "redirect:/dashboard/role";
			}
		}
		//thực hiện chức năng delete author
		@GetMapping(value = "/delete/{roleId}")
		public String DeleteAuthor(@PathVariable int roleId, RedirectAttributes redirectAttributes) {
			try {
				roleservice.delete(roleId);
				redirectAttributes.addFlashAttribute("messagesuccess", "Delete Successfully");
				return "redirect:/dashboard/role";
			} catch (Exception e) {
				redirectAttributes.addFlashAttribute("message", "Delete Faild");
				return "redirect:/dashboard/role";
			}
		}
}
