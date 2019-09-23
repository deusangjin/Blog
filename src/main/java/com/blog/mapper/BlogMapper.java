package com.blog.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.blog.VO.BlogMember;

@Repository("bMap")
public interface BlogMapper {
	public void join(BlogMember bm);
	
	public String login(String id);
	
	
}
