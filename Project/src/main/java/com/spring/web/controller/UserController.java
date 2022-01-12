package com.spring.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.web.dao.UserDAO;
import com.spring.web.service.UserService;
import com.spring.web.vo.UserVO;

@Controller
public class UserController  {

	@Autowired
	private UserService userService; 

	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public String login(UserVO vo, HttpSession httpSession) {
		System.out.println("5555");
		System.out.println(vo.toString());
		UserVO user=userService.getUser(vo);
//		System.out.println("USer Controller : " + user.toString());
		if(user!=null) {
			httpSession.setAttribute("id", user.getId());
			httpSession.setAttribute("nickname", user.getNickname());
			return "redirect:/resources/index.jsp";
		}
		else { 
			return "redirect:/resources/front/User/login.jsp";
		}
	}

	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String loginView() {
		
		System.out.println("LoginView()");
		return "login.jsp";
	}

	@RequestMapping(value="/logout.do")
	public String logout(HttpSession httpSession) {
		System.out.println("Logout");
		httpSession.invalidate();
		System.out.println("over");
		return "redirect:/resources/index.jsp";
	}

	@RequestMapping(value="/insertUser.do")
	public String insertUser(UserVO vo) {
		System.out.println("insertUser()");

		userService.insertUser(vo);

		return "redirect:/resources/front/User/login.jsp";
	}

	@RequestMapping(value="/updateUser.do")
	public String updateUser(UserVO vo) {
		System.out.println("updateUser()");

		userService.updateUser(vo);;

		return "redirect:/resources/front/User/index.jsp";
	}

	@RequestMapping(value="/deleteUser.do")
	public String deleteUser(UserVO vo) {
		System.out.println("deleteUser");

		userService.deleteUser(vo);;

		return "redirect:/resources/index.jsp";
	}
	
	@RequestMapping(value="/userInfo.do")
	public String getUser(UserVO vo, Model model) {
		System.out.println("userInfo.do-Mypage");
		
		model.addAttribute("userInfo", userService.userInfo(vo));
		return "/resources/front/User/mypage.jsp";
		
	}
}
