package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.Role;
import com.entity.User;
import com.service.loginService;
import com.service.userService;

@Controller
@RequestMapping("/register")
public class registerController {
	@Autowired
	loginService loginService;
	@Autowired
	userService userSer;

	@GetMapping
	public String Default() {
		return "registration";
	}

	public registerController() {
		// TODO Auto-generated constructor stub
	}

	@PostMapping
	public String Register(@RequestParam String username, @RequestParam String password, @RequestParam String name,
			@RequestParam int age, @RequestParam String address, ModelMap map) {

		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setName(name);
		user.setAge(age);
		user.setAddress(address);
		Role role = new Role();
		role.setRoleId(2);
		user.setRoleId(role);
		user.setStatus(true);
		user.setGender(true);

		boolean check = userSer.register(user);
		if (check) {
			map.addAttribute("checkRegister", "Tao tai khoan thanh cong!!");
		} else {
			map.addAttribute("checkRegister", "Username or password false!!, plese check again.");

			return "client/login";
		}
		return "client/login";
	}
}
