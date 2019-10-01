package com.blog.main;

import java.util.ArrayList;
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

import com.blog.VO.BlogBoard;
import com.blog.VO.BlogMember;
import com.blog.service.BlogService;
import com.blog.util.pagingAction;

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
	public void main(String id, HttpSession session, Model model) {
		session.setAttribute("id", id);
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
		return "mainView";
	}


	@GetMapping("list")
	public void list() {

	}

	@PostMapping("list")
	public String list(String pageNum, String word, String id, Model model, String subject, HttpSession session) {

		String pageHtml;
		ArrayList<BlogBoard> arr;
		subject = subject == null ? "" : subject;
		word = word == null ? "" : word;
		if (pageNum == null)
			pageNum = "1";
		System.out.println(subject);
		System.out.println(id);
		System.out.println(word);
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
	public String detail(Model model) {
		logger.info("detailView");
		return "detail";
	}

	@GetMapping("login")
	public void login() {

	}

	@PostMapping("login")
	public String login(String id, String pwd, Model model, HttpSession session, HttpServletResponse response) {
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

}
