package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping(value = {"/dashboard"})
@SessionAttributes(value = { "username", "catId" })
public class AdminController {
	
	@GetMapping
	public String TrangChu(HttpSession httpSession,ModelMap modelMap) {
		String catIdstr = httpSession.getAttribute("catId").toString();
		String username = (String) httpSession.getAttribute("username");
		modelMap.addAttribute("username",username);
		int catId = Integer.parseInt(catIdstr);
		try {
			if (username == null) {
				return "login";
			} else {
				switch (catId) {
				case 1:
					return "dashboard";
				case 2:
					return "client/index";
				}
			}
			return "login";
		} catch (Exception e) {
			return "login";
		}
	
	}	
}
