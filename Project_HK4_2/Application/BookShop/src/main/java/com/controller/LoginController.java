package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.entity.Book;
import com.entity.User;
import com.service.loginService;

@RequestMapping(value = { "/login" })
@Controller
public class LoginController {
	@Autowired
	loginService loginservice;

	@GetMapping
	public String Default(ModelMap modelMap) {
//		List<Book> listfindAll = bookservice.findAll(-1);
//		modelMap.addAttribute("list1", listfindAll);
		return "Login";
	}

	@PostMapping
	public String CheckLoginUser(@RequestParam String txtusername, @RequestParam String txtpassword,
			RedirectAttributes redirectAttributes, ModelMap modelMap, HttpSession session) {
		if (!txtusername.isEmpty() || !txtpassword.isEmpty()) {
			boolean checkAdmin = loginservice.checkLogin(txtusername, txtpassword);
			if (checkAdmin) {
				List<User> findByMembername = loginservice.findByUser(txtusername, txtpassword);
				for (User user : findByMembername) {
					
					int catId = Integer.parseInt(user.getRoleId().getRoleId().toString());
					if (catId == 1) {
						modelMap.addAttribute("username", txtusername);
						session.setAttribute("username", txtusername);
						modelMap.addAttribute("catId", catId);
						int memberid = user.getUserId();
						modelMap.addAttribute("memberid", memberid);
						session.setAttribute("memberid", memberid);
						return "dashboard";
					} else if (catId == 2) {
						modelMap.addAttribute("member", txtusername);
						session.setAttribute("member", txtusername);
						modelMap.addAttribute("catId", catId);
						int memberid = user.getUserId();
						modelMap.addAttribute("memberid", memberid);
						session.setAttribute("memberid", memberid);
						return "client/index";
					}
				}
			}
		} else {
			return "Login";
		}
		return "Login";
	}
	@GetMapping("logout")
	public String dangxuat(HttpSession session) {
		session.removeAttribute("username");
		session.removeAttribute("member");
		return "redirect:/Login";
	}
	@GetMapping("logoutuser")
	public String dangxuatuser(HttpSession session) {
		session.removeAttribute("username");
		session.removeAttribute("member");
		return "Login";
	}
}
