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
	public ArrayList<BlogBoard> list(int startRow, int endRow,String word,String id,String subject){
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		map.put("word",word);
		map.put("id",id);
		map.put("subject",subject);

		ArrayList<BlogBoard> arr = bMap.list(map);
		System.out.println(arr.size());
		return arr;
 	}

	public void insert(BlogBoard bb) {
		bMap.insert(bb);
	}	
	
	public int getCount(String word,String id,String subject) {		

		HashMap<String, Object> map = new HashMap<>();
		
		map.put("word", word);
		map.put("id",id);
		map.put("subject",subject);

		int	count = bMap.getCount(map);
		return count;
	}
}
