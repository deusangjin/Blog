package com.blog.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.blog.VO.BlogBoard;
import com.blog.VO.BlogMember;

@Repository("bMap")
public interface BlogMapper {
	public void join(BlogMember bm);
	
	public String login(String id);
	
	public ArrayList<BlogBoard> list(HashMap<String, Object> map);
	
	public int getCount(HashMap<String, Object> map);
	
	public void insert(BlogBoard bb);
	
	public BlogBoard detail(int num);
}
