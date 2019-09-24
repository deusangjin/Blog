package com.blog.main;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.VO.BlogMember;
import com.blog.service.BlogService;
import com.blog.service.BlogServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private BlogService bService;
	
	
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
	public String login(String id,String pwd,Model model,HttpSession session) {
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
