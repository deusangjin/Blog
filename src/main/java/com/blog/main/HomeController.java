package com.blog.main;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.VO.BlogBoard;
import com.blog.VO.BlogMember;
import com.blog.service.BlogService;
import com.blog.util.pagingAction;

import oracle.net.aso.b;

@Controller
public class HomeController {

	@Autowired
	private BlogService bService;

	@Resource(name = "pageAction")
	private pagingAction page;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Home(Model model) {
		return "login";
	}

	@GetMapping("mainView")
	public void main() {
		
	}

	@GetMapping("index")
	public void index() {

	}

	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@GetMapping("insert")
	public void insert() {
		
	}

	@PostMapping("insert")
	public String insert(BlogBoard bb) {
		bService.insert(bb);
		return "redirect:mainView";
	}


	@GetMapping("list")
	public void list() {
		
	}

	@PostMapping("list")
	public String list(String pageNum, String word, String id, String subject, Model model ) {
		
		String pageHtml;
		ArrayList<BlogBoard> arr;
		subject = subject == null ? "" : subject;
		word = word == null ? "" : word;
		if (pageNum == null)
			pageNum = "1";

		int currentPage = Integer.parseInt(pageNum);
		int count = bService.getCount(word, id, subject);
		int pageSize = 5;
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		if (endRow > count)
			endRow = count;
		int boardNum = ((currentPage - 1) * pageSize);
		arr = bService.list(startRow, endRow, word, id, subject);
		pageHtml = page.paging(count, pageSize, currentPage, word, subject);
		
		model.addAttribute("list", arr);
		model.addAttribute("count", count);
		model.addAttribute("boardNum", boardNum);
		model.addAttribute("pageHtml", pageHtml);
		return "listTable";
	}

	
	

	@GetMapping("detail")
	public void detail(int num,Model model,String id) {
		
	}
	
	@PostMapping("detail")
	public void detail(int num ,Model model){
		BlogBoard bb = bService.detail(num);
		model.addAttribute("bb",bb);
		model.addAttribute("num",num);
	}
	@GetMapping("login")
	public void login() {

	}

	@PostMapping("login")
	public String login(String id, String pwd, HttpSession session) {
		String pwd1 = bService.login(id);

		if (pwd.equals(pwd1)) {
			session.setAttribute("id", id);
			return "mainView";
		} else {
			return "login";
		}
	}

	@GetMapping("join")
	public void join() {

	}

	@PostMapping("join")
	public String join(BlogMember bm) {
		bService.join(bm);
		return "redirect:/";
	}
	
	@GetMapping("SubjectView")
	public void SubjectView( String subject,Model model,@RequestParam("num") int num) {
	
		model.addAttribute("subject",subject);
		model.addAttribute("num",num);
	}
	
	@PostMapping("SubjectView")
	public void SubjectView(int num ,Model model) {
		model.addAttribute("num",num);
	}
	
	@GetMapping("SubjectList")
	public void SubjectList() {
		
	}
	
	@PostMapping("SubjectList")
	public String SubjectList(String pageNum, String word, String id, String subject, Model model ) {
		String pageHtml;
		ArrayList<BlogBoard> arr;
		subject = subject == null ? "" : subject;
		word = word == null ? "" : word;
		if (pageNum == null)
			pageNum = "1";

		int currentPage = Integer.parseInt(pageNum);
		int count = bService.getCount(word, id, subject);
		int pageSize = 5;
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		if (endRow > count)
			endRow = count;
		int boardNum = ((currentPage - 1) * pageSize);
		arr = bService.list(startRow, endRow, word, id, subject);
		pageHtml = page.paging(count, pageSize, currentPage, word, subject);

		model.addAttribute("list", arr);
		model.addAttribute("count", count);
		model.addAttribute("boardNum", boardNum);
		model.addAttribute("pageHtml", pageHtml);
		
		return "SubjectListTable";
	}
	
	@GetMapping("SubjectInsert")
	public void SubjectInsert() {
		
	}
	@GetMapping("remove")
	public String remove(int num) {
		System.out.println(num);
		bService.remove(num);
	return "detail";
	}
}
