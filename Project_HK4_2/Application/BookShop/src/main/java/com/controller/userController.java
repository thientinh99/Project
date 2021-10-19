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

import com.entity.Author;
import com.entity.Role;
import com.entity.User;
import com.service.authorService;
import com.service.roleService;
import com.service.userService;

@Controller
@RequestMapping("/dashboard/user")
public class userController {
	@Autowired
	userService userservice;
	@Autowired
	roleService roleservice;

	// vào trang mặt định author
	@GetMapping
	public String Default(ModelMap modelMap) {
		List<User> list = userservice.findAll(0);
		List<User> listfindAll = userservice.findAll(-1);
		double tongsopage = Math.ceil((double) listfindAll.size() / 4);
		modelMap.addAttribute("list", list);
		modelMap.addAttribute("list1", listfindAll);
		modelMap.addAttribute("tongsopage", tongsopage);
		return "User";
	}

	// vào trang add user
	@GetMapping(value = "/addNewUser")
	public String AddNewUserGet(ModelMap modelMap) {
//		List<User> listfindAll = userservice.findByAllRole();
		List<Role> listfindAll = roleservice.findAll(0);
		modelMap.addAttribute("list1", listfindAll);
		return "AddNewUser";
	}

	// thực hiện chức năng add user
	@PostMapping(value = "/addNewUser")
	public String AddNewUserPost(@RequestParam String txtUserName, @RequestParam String txtPassword,
			@RequestParam String txtName, @RequestParam int txtAge, @RequestParam String txtAddress,
			@RequestParam int txtgender, @RequestParam int txtrole, RedirectAttributes redirectAttributes) {
		try {
			User user = new User();
			user.setUsername(txtUserName);
			user.setPassword(txtPassword);
			user.setName(txtName);
			user.setAge(txtAge);
			user.setAddress(txtAddress);
			user.setStatus(true);
			if (txtgender == 0) {
				user.setGender(true);
			} else if (txtgender == 1) {
				user.setGender(false);
			}
			Role role = new Role();
			role.setRoleId(txtrole);
			user.setRoleId(role);
			userservice.save(user);
			redirectAttributes.addFlashAttribute("messagesuccess", "Successfully added User");
			return "redirect:/dashboard/user";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Add User failed");
			return "redirect:/dashboard/user";
		}
	}

	// vào trang update author
	@GetMapping(value = "updateUser/{userId}")
	public String findByIdUserGet(@PathVariable int userId, ModelMap modelMap) {
		List<User> list = userservice.findById(userId);
		List<Role> listRole = roleservice.findAll(0);
		modelMap.addAttribute("listRole", listRole);
		modelMap.addAttribute("list", list);
		return "UpdateUser";
	}

	@PostMapping(value = "updateUser/{userId}")
	public String findByIdUserGet(@PathVariable int userId, @RequestParam String txtUsername,
			@RequestParam String txtName, @RequestParam int txtAge, @RequestParam String txtAddress,
			@RequestParam int txtrole, @RequestParam int txtgender, RedirectAttributes redirectAttributes) {

//		boolean result = false;
		try {
			if (txtgender == 0) {
				userservice.update(userId, txtUsername, txtName, txtAge, txtAddress, false, txtrole);
				redirectAttributes.addFlashAttribute("messagesuccess", "Successfully Update");
				return "redirect:/dashboard/user";

			} else if (txtgender == 1) {
				userservice.update(userId, txtUsername, txtName, txtAge, txtAddress, true, txtrole);
				redirectAttributes.addFlashAttribute("messagesuccess", "Successfully Update");
				redirectAttributes.addFlashAttribute("messagesuccess", "Successfully Update");
				return "redirect:/dashboard/user";

			}

		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Update failed");
			return "redirect:/dashboard/user";
		}
		return "redirect:/dashboard/user";
	}
	//thực hiện chức năng delete author
		@GetMapping(value = "delete/{userId}")
		public String DeleteUser(@PathVariable int userId, RedirectAttributes redirectAttributes) {
			try {
				userservice.delete(userId);
				redirectAttributes.addFlashAttribute("messagesuccess", "Delete Successfully");
				return "redirect:/dashboard/user";
			} catch (Exception e) {
				redirectAttributes.addFlashAttribute("message", "Delete Faild");
				return "redirect:/dashboard/user";
			}
		}
}
