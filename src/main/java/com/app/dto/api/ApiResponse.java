package com.app.dto.api;

import lombok.Data;

@Data
public class ApiResponse<T> {
	//제네릭 :  사용하는 시점에 무슨 타입인지 동적으로 정한다
	//Generic
	ApiResponseHeader header;
	T body;
}
