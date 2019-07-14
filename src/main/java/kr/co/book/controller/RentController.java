package kr.co.book.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.co.book.service.RentService;
import kr.co.book.vo.AlarmVO;
import kr.co.book.vo.MemberVO;
import kr.co.book.vo.RentListVO;
import kr.co.book.vo.RentVO;
import kr.co.book.vo.SearchVO;

@Controller
public class RentController {
	
	@Autowired
	private RentService service;
	
	@RequestMapping("/rentListLibrary")
	public String rentListLibrary(HttpSession session, Model model, SearchVO search){
		search.setMemberId(((MemberVO)session.getAttribute("member")).getMemberId());//로그인한 도서관 회원 ID
		if(search.getReqPage()==0) {
			search.setReqPage(1);
		}
		RentListVO list = service.rentListOfLibrary(search);
		model.addAttribute("list",list);
		model.addAttribute("search",search);
		return "rentListLibrary";
	}
	
	@ResponseBody
	@RequestMapping("/return.do")
	public void returnBook(RentVO rent, HttpServletResponse response) throws IOException{
		int result = service.returnBook(rent);
		response.getWriter().println(result);
	}
	
	
	@RequestMapping("/reserve.do")
	public String reserve(RentVO rent){
		int result = service.reserve(rent);
		System.out.println(result);
		return "redirect:/bookInfo?no="+rent.getRentBook();
	}
	
	@RequestMapping("/alarm")
	public String alarm(Model model, HttpSession session){
		ArrayList<AlarmVO> list = service.alarm((((MemberVO)session.getAttribute("member")).getMemberId()));
		model.addAttribute("list",list);
		return "alarm";
	}

}
