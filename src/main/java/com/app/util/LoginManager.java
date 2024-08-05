package com.app.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginManager {
	
	private static final String SESSION_LOGIN_EMAIL = "loginUserEmail"; 
	
	public static void setSessionLogin(String email, HttpSession session) {
		session.setAttribute(SESSION_LOGIN_EMAIL, email);
	}
	
	public static void setSessionLogin(String id, HttpServletRequest request ) {
		//request.getSession().setAttribute(SESSION_LOGIN_ID, id);
		setSessionLogin(id, request.getSession());
	}
	
	public static boolean isLogin(HttpSession session) {
		if(session != null && session.getAttribute(SESSION_LOGIN_EMAIL) != null) {
			return true;
		}
		
		return false;
	}
	
	public static boolean isLogin(HttpServletRequest request) {
		return isLogin(request.getSession());
	}
	
	public static String getLoginUserEmail(HttpSession session) {
		if(session != null) {
			return (String)session.getAttribute(SESSION_LOGIN_EMAIL);
		}
		return null;
	}
	
	public static void logout(HttpSession session) {
		session.invalidate();
	}
	
	public static void logout(HttpServletRequest request) {
		logout(request.getSession());
	}
}
