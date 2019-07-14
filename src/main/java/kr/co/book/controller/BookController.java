package kr.co.book.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.co.book.service.BookService;
import kr.co.book.service.memberService;
import kr.co.book.vo.BookListVO;
import kr.co.book.vo.BookVO;
import kr.co.book.vo.MemberVO;
import kr.co.book.vo.RentListVO;
import kr.co.book.vo.RentVO;
import kr.co.book.vo.SearchVO;

@Controller
public class BookController {
	
	@Autowired
	private BookService service;
	
	@Autowired
	private memberService mService;
	
	@RequestMapping("/addBook.do")
	public String addBook(BookVO book){
		service.insertBook(book);
		return "redirect:/bookManage";
	}
	
	@RequestMapping("/modifyBook.do")
	public String modifyBook(BookVO book){
		service.updateBook(book);
		return "redirect:/bookManage";
	}
	@RequestMapping("/bookManage")
	public String bookList(Model model, SearchVO search, HttpSession session){
		if(search.getReqPage()==0) {
			search.setReqPage(1);
		}
		search.setMemberId(((MemberVO)session.getAttribute("member")).getMemberId());
		BookListVO list = service.selectBook(search);
		model.addAttribute("search", search);
		model.addAttribute("list", list);
		return "bookManage";
	}
	
	@RequestMapping("/bookLocation")
	public String bookLocation(Model model, SearchVO search, HttpSession session){
		if(search.getReqPage()==0) {
			search.setReqPage(1);
		}
		search.setSort("loca");
		search.setMemberId(((MemberVO)session.getAttribute("member")).getMemberId());
		BookListVO list = service.selectBook(search);
		model.addAttribute("search", search);
		model.addAttribute("list", list);
		return "bookLocation";
	}
	
	@RequestMapping("/bookSearch")
	public String bookSearch(Model model, SearchVO search){
		if(search.getReqPage()==0) {
			search.setReqPage(1);
		}
		BookListVO list = service.selectBook(search);
		model.addAttribute("search", search);
		model.addAttribute("list", list);
		return "bookSearch";
	}
	
	@ResponseBody
	@RequestMapping("/getLibrary.do")
	public void getLibrary(HttpServletResponse response) throws IOException{

		ArrayList<MemberVO> list = mService.getLibrary();
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		new Gson().toJson(list,response.getWriter());
	}
	
	/* 도서 상세 */
	@RequestMapping("/bookInfo")
	public String bookInfo(@RequestParam String no, Model model){
		BookVO book = service.selectBook(Integer.parseInt(no));
		model.addAttribute("book",book);
		return "bookInfo";
	}
	
	@RequestMapping("/bookModify")
	public String bookModify(@RequestParam String no, Model model){
		BookVO book = service.selectBook(Integer.parseInt(no));
		model.addAttribute("book",book);
		return "bookModify";
	}
	
	@RequestMapping("/index")
	public String home(Model model){
		ArrayList<BookVO> list = service.selectBook();
		model.addAttribute("list", list);
		return "index";
	}
	
	
	@RequestMapping("/rentListMember")
	public String rentListMember(HttpSession session, Model model, SearchVO search){
		MemberVO member = (MemberVO)session.getAttribute("member");
		search.setMemberId(member.getMemberId());
		if(search.getReqPage()==0) {
			search.setReqPage(1);
		}
		RentListVO list = service.selectRent(search);
		model.addAttribute("list",list);
		return "rentListMember";
	}
	
	
	
	@RequestMapping("/rent.do")
	public String rentBook(RentVO rent){
		service.rentBook(rent);
		return "redirect:/rentListMember";
	}

}
