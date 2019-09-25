package com.blog.main;

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

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private BlogService bService;
	
	@Resource(name = "pageAction")
	private pagingAction page;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "mainView";

	}
	@GetMapping("index")
	public void index() {
		
	}
	@GetMapping("insert")
	public void insert() {
		logger.info("insertView");
	}
	
	
	@GetMapping("list")
	public void list() {
		
	}
	
	@PostMapping("list")
	public String list(String pageNum,String word,Model model) {
		
		word = word==null?"" :word;
		if(pageNum==null) pageNum = "1";
		int currentPage=Integer.parseInt(pageNum);
		//int count =50;
		int count = bService.getCount(word);
		int pageSize = 5;
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = startRow + pageSize-1;
		if(endRow > count) endRow = count;
		int boardNum = ((currentPage-1)*pageSize);
	
		String pageHtml= page.paging(count,pageSize,currentPage,word);
		
		ArrayList<BlogBoard> arr = bService.list(startRow,endRow,word);
		model.addAttribute("list",arr);
		model.addAttribute("count",count);
		model.addAttribute("boardNum",boardNum);
		model.addAttribute("pageHtml",pageHtml);
		
		return "listTable";
	}
	@GetMapping("detail")
	public String detail(Model model) {
		logger.info("detailView");
		return "detail";
	}
	@GetMapping("login")
	public void login(Model model) {
		
	}
	
	@PostMapping("login")
	@ResponseBody
	public String login(@RequestParam("id") String id,String pwd,Model model, HttpServletRequest req,HttpServletResponse resp) {
		String pwd1 = bService.login(id);
		String flag;
		if(pwd.equals("")) {
			flag ="0";
		}else if(pwd.equals(pwd1)) {
			flag ="1";
		}
		else {
			flag = "2";
		}
		return flag;
	}
	
	@GetMapping("join")
	public String join() {
		return "join";
	}
	
	@PostMapping("join")
	public void Join(BlogMember bm) {
		bService.join(bm);
	}	

	
}
