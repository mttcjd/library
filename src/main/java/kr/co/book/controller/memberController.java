package kr.co.book.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.book.service.memberService;
import kr.co.book.vo.MemberLoginVO;
import kr.co.book.vo.MemberVO;

@Controller
public class memberController {
	
	@Autowired
	private memberService service;


	@RequestMapping("/login.do")
	public String login(MemberLoginVO mem, HttpServletRequest request){

		MemberVO member = service.login(mem);

		if(member == null){
			return "redirect:/login";
			
		}else{
			
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			
			return "redirect:/";
		}
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request){
		HttpSession session = request.getSession(false);
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/join.do")
	public String join(MemberVO member){

		int result = service.join(member);
		System.out.println(result);
		return "redirect:/login";
	}
	
	
	
}
