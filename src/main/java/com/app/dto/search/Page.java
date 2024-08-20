package com.app.dto.search;

import lombok.Data;

@Data
public class Page {

	int currentPage;
	int itemsPerPage;
	int totalItems;
	int totalPages;
	int viewStartItem;
	int viewEndItem;
	int pageStart;
	int pageEnd;
	int frontPage;
	int backPage;
	
}
