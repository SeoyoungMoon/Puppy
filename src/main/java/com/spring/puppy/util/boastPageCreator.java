package com.spring.puppy.util;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class boastPageCreator {

	private PageVO paging; 
	private int articleTotalCount;
	private int endPage;
	private int beginPage;
	private boolean prev;
	private boolean next;
	
	private final int buttonNum = 5;
	
	private void calcDataOfPage() {
		
		endPage = (int) (Math.ceil(paging.getPageNum() / (double) buttonNum) * buttonNum);
		
		beginPage = (endPage - buttonNum) + 1;
		
		prev = (beginPage == 1) ? false : true;
		
		next = articleTotalCount <= (endPage * paging.getCountPerPage()) ? false : true;
		
		if(!next) {
			endPage = (int) Math.ceil(articleTotalCount / (double) paging.getCountPerPage());
		}
	}
	
	public void setArticleTotalCount(int articleTotalCount) {
		this.articleTotalCount = articleTotalCount;
		calcDataOfPage();
	}
	
	
}
