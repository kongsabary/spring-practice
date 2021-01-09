package com.kdh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/login")
@Controller
public class LoginController {

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void login() throws Exception {
	}
	
	@RequestMapping(value = "loginPost", method = RequestMethod.POST)
	public void loginPost() throws Exception {
	}
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void join() throws Exception {
	}
	
	@RequestMapping(value = "joinPost", method = RequestMethod.POST)
	public void joinPost() throws Exception {
	}
	
}
