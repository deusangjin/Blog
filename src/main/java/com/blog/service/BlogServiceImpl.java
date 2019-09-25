package com.blog.service;


import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.VO.BlogBoard;
import com.blog.VO.BlogMember;
import com.blog.mapper.BlogMapper;

@Service
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogMapper bMap;
	
	public void join(BlogMember bm) {
		bMap.join(bm);
	}
	public String login(String id) {
		String pwd = bMap.login(id);
		return pwd;
	}
	public ArrayList<BlogBoard> list(int startRow, int endRow,String word){
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		map.put("word",word);
		ArrayList<BlogBoard> arr = bMap.list(map);

		return arr;
 	}
	public int getCount(String word) {
	int	count = bMap.getCount(word);
		return count;
	}
}
