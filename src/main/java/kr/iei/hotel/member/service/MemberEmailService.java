package kr.iei.hotel.member.service;

import javax.servlet.http.HttpSession;

public interface MemberEmailService {
	
	String createCode();
	
	String createPassword();

	void setCodeSession(HttpSession codeSession);
	
	void sendCodeEmail(String memberEmail, HttpSession codeSession);
	
	void sendPasswordEmail(String memberEmail, String password);
	
}
