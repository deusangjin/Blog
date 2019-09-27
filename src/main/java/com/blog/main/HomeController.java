package com.blog.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.VO.BlogBoard;
import com.blog.VO.BlogMember;
import com.blog.service.BlogService;
import com.blog.service.BlogServiceImpl;
import com.blog.util.pagingAction;

@Controller
public class HomeController {

	@Autowired
	private BlogService bService;

	@Resource(name = "pageAction")
	private pagingAction page;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "login";
	}

	@GetMapping("mainView")
	public String main(String id, String pwd, Model model, HttpSession session, HttpServletResponse response) {
		String pwd1 = bService.login(id);
		
			if (pwd.equals(pwd1)) {
				session.setAttribute("id", id);
				return "index";
			}
			else {
//			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter out;
//			try {
//				out = response.getWriter();
//				out.println("<script>  alert('회원가입'); </script>");
//				out.flush();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
				return "login";
			}
		}
	@GetMapping("index")
	public void index() {
		
	}

	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@PostMapping("insert")
	public void insert() {

	}

	@GetMapping("insert")
	public String insert(BlogBoard bb, Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		bService.insert(bb);
		ArrayList<BlogBoard> arr = bService.list(1, 5, "", id);
		model.addAttribute("list", arr);
		return "redirect:index";
	}

	@GetMapping("list")
	public void list() {
	}

	@PostMapping("list")
	public String list(String pageNum, String word, Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		String pageHtml;

		ArrayList<BlogBoard> arr;
	
		word = word == null ? "" : word;
		if (pageNum == null)
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int count = bService.getCount(word, id);
		int pageSize = 5;
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		if (endRow > count)
			endRow = count;
		int boardNum = ((currentPage - 1) * pageSize);
		/*
		 * String pageHtml = page.paging(count, pageSize, currentPage, word);
		 */
		System.out.println(endRow);
		arr = bService.list(startRow, endRow, word, id);
		pageHtml = page.paging(count, pageSize, currentPage, word);
	
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
	public void login(String id, HttpSession session) {
		
	}

	@GetMapping("join")
	public void join() {

	}

	@PostMapping("join")
	public String Join(BlogMember bm) {
		bService.join(bm);
		return "redirect:/";
	}

}
