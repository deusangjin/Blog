package com.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.VO.BlogMember;
import com.blog.mapper.BlogMapper;

@Service
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogMapper bMap;
	
	public void join(BlogMember bm) {
		bMap.join(bm);

	}
}
