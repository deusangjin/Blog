package com.blog.service;

import java.util.ArrayList;

import com.blog.VO.BlogMember;

public interface BlogService {
	
	public void join(BlogMember bm);
	
	public String login(String id);
	
}
