package com.blog.util;

import org.springframework.stereotype.Service;

@Service("pageAction")
public class pagingAction {
	public String paging(int count,int pageSize,int currentPage,String word,String subject) {
		String file = "javascript:getSearch";
		int pageCount = count/pageSize + (count%pageSize==0?0:1);
		int pageBlock = 3;
		int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
		int endPage = startPage + pageBlock-1;
		if(endPage>pageCount) endPage = pageCount;
		StringBuffer sb = new StringBuffer();
		
		if(count>0) {
			if(startPage>pageBlock) {
				sb.append("<a href="+file+"(");
				sb.append((startPage-pageBlock)+",'"+word+"','"+subject+"')");
				sb.append(">[이전]</a>");
			}
			for(int i = startPage; i<=endPage; i++) {
				if(i==currentPage) {
					sb.append("["+i+"]");
				}else {
					sb.append("<a href="+file+"(");
					sb.append(i+",'"+word+"','"+subject+"')");
					sb.append(">["+i+"]</a>");
				}
			}
			if(endPage<pageCount) {
				sb.append("<a href="+file+"(");
				sb.append((startPage+pageBlock)+",'"+word+"','"+subject+"')");
				sb.append(">[다음]</a>");
			}
		}
		return sb.toString();
	}
}
