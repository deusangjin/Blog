package com.blog.mapper;

import org.springframework.stereotype.Repository;

import com.blog.VO.BlogMember;

@Repository("bMap")
public interface BlogMapper {
	public void join(BlogMember bm);
	
}
