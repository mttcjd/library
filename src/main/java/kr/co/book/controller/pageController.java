package kr.co.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pageController {

	@RequestMapping("/join")
	public String joinPage(){
		return "join";
	}
	
	@RequestMapping("/login")
	public String loginPage(){
		return "login";
	}
	
	
	@RequestMapping("/bookRegister")
	public String bookRegister(){
		return "bookRegister";
	}

	
/*
	@RequestMapping("/mapSearch")
	public String mapSearch(){
		return "mapSearch";
	}
	
	@RequestMapping("/myInfoChk")
	public String myInfoChk(){
		return "myInfoChk";
	}
	
	@RequestMapping("/leave")
	public String leave(){
		return "leave";
	}
*/
}
