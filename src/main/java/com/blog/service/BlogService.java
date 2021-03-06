package com.blog.service;

import java.util.ArrayList;
import java.util.List;

import com.blog.VO.BlogBoard;
import com.blog.VO.BlogMember;

public interface BlogService {
	
	public void join(BlogMember bm);
	
	public String login(String id);
	
	public ArrayList<BlogBoard> list(int startRow, int endRow,String word,String id,String subject);
	
	public int getCount(String word,String id,String subject);

	public void insert(BlogBoard bb);
	
	public BlogBoard detail(int num);
	
	public void remove(int num);

}
