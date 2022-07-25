package com.shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.shop.model.UserVO;
import com.shop.service.UserService;

@Controller
@SessionAttributes("user")
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/insertUser.do")
	public String insertUser(UserVO vo) {
		userService.insert(vo);
		return "member_ok.jsp";
	}
	
	@RequestMapping(value="/updateUser.do")
	public String updateUser(@ModelAttribute("user") UserVO vo) {
		userService.update(vo);
		return "loginmainpage.jsp";
	}
	
	@RequestMapping(value="/deleteUser.do")
	public String deleteUser(UserVO vo) {
		userService.delete(vo);
		return "";
	}
	
	@RequestMapping(value="/login.do")
	public String getUser(UserVO vo, HttpSession session, Model model) {
		
		model.addAttribute("user",userService.getUser(vo));
		// 세션에서 정보 가져올때 필요한 것
		
		if(userService.getUser(vo) != null) { 
			session.setAttribute("userName", userService.getUser(vo).getName());
			System.out.println("아이디 확인 : " + userService.getUser(vo).getName());
			return "loginmainpage.jsp";
		} else {
			return "login_fail.jsp";
		}
		
	}
   
}
