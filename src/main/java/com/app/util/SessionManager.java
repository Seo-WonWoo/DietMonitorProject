package com.app.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionManager {
	
	private static final String SESSION_LOGIN_EMAIL = "loginUserEmail"; 
	private static final String SESSION_ACCOUNT_NO = "accountNo";
	private static final String SESSION_MEMBER_NO = "memberNo";
	
	public static String getLoginAccountEmail(HttpSession session) {
		if(session != null) {
			return (String)session.getAttribute(SESSION_LOGIN_EMAIL);
		}
		return null;
	}
	
	public static void setSessionAccount(int accountNo, int memberNo, HttpSession session) {
		if (session != null) {
			session.setAttribute(SESSION_ACCOUNT_NO, accountNo);
			session.setAttribute(SESSION_MEMBER_NO, memberNo);
		}
	}
	
	public static void setSessionAccount(int accountNo, int memberNo, HttpServletRequest request ) {
		setSessionAccount(accountNo, memberNo, request.getSession());
	}
	
	public static boolean isLoginedAccount(HttpSession session) {
		if(session != null && session.getAttribute(SESSION_ACCOUNT_NO) != null) {
			return true;
		}
		
		return false;
	}
	
	public static boolean isLoginedAccount(HttpServletRequest request) {
		return isLoginedAccount(request.getSession());
	}
	
	public static int getAccountNo(HttpSession session) {
		if(session != null) {
			return (int) session.getAttribute(SESSION_ACCOUNT_NO);
		}
		return 0;
	}
	
	public static int getMemberNo(HttpSession session) {
		if(session != null) {
			return (int) session.getAttribute(SESSION_MEMBER_NO);
		}
		return 0;
	}
	
	public static void logout(HttpSession session) {
		session.invalidate();
	}
	
	public static void logout(HttpServletRequest request) {
		logout(request.getSession());
	}
}
