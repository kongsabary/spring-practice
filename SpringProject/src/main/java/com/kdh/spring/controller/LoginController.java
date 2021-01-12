package com.kdh.spring.controller;

import java.lang.ProcessBuilder.Redirect;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kdh.spring.domain.UserVo;
import com.kdh.spring.service.LoginService;

@RequestMapping("/login")
@Controller
public class LoginController {

	@Inject
	private LoginService loginService;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void login() throws Exception {
	}
	
	@RequestMapping(value = "loginPost", method = RequestMethod.POST)
	public String loginPost(UserVo userVo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		UserVo login = loginService.login(userVo);
		// DB에 데이터가 있으면(로그인상태) session에 저장
		// DB에 데이터가 없으면 null
		HttpSession session = req.getSession();
		if(login == null) {
			session.setAttribute("login", null);
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("login", login);
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void join() throws Exception {
	}
	
	@RequestMapping(value = "joinPost", method = RequestMethod.POST)
	public void joinPost() throws Exception {
	}
	
}
