package com.app.dto.search;

import java.util.List;

import lombok.Data;

@Data
public class SearchResult {

	List<Food> foodList;
	Page page;
	
}
