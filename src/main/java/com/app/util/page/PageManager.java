package com.app.util.page;

import com.app.dto.search.Page;

public class PageManager {

	public static Page pageCalculate(int currentPage, int itemsPerPage, int totalItems) {
		
			
		int totalPages = (int)(Math.ceil(totalItems/(double)itemsPerPage));		
		int viewStartItem = (currentPage - 1) * itemsPerPage + 1;		
		int viewEndItem = Math.min((viewStartItem + itemsPerPage - 1), totalItems);		
		int pageStart = (int)(Math.floor((currentPage-1)/10)) * 10 + 1;		
		int pageEnd = Math.min((pageStart + 9), totalPages); 
		int frontPage = currentPage < 11 ? 1 : pageStart - 10;
		int backPage = Math.min((pageEnd + 1), totalPages);		
		
		Page caculatePage = new Page();
		
		caculatePage.setCurrentPage(currentPage);		
		caculatePage.setItemsPerPage(itemsPerPage);		
		caculatePage.setTotalItems(totalItems);		
		caculatePage.setTotalPages(totalPages);
		caculatePage.setViewStartItem(viewStartItem);		
		caculatePage.setViewEndItem(viewEndItem);
		caculatePage.setPageStart(pageStart);
		caculatePage.setPageEnd(pageEnd);
		caculatePage.setFrontPage(frontPage);
		caculatePage.setBackPage(backPage);
		
		return caculatePage;
		
	}
	
}
