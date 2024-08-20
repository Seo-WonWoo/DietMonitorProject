package com.app.util;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.regex.Pattern;

public class ConvertDateUtil {
	
		//String -> LocalDate
		public static LocalDate convertStringToLocalDateTime(String str) {
						
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMdd");
			LocalDate ld = LocalDate.parse(str, dtf);
			return ld;
		}
}
