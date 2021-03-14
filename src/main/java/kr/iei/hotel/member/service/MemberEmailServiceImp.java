package kr.iei.hotel.member.service;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.vo.MemberCodeEmailVo;
import kr.iei.hotel.member.vo.MemberPasswordEmailVo;

@Service
public class MemberEmailServiceImp implements MemberEmailService {

	@Autowired
	private JavaMailSender javaMailSender;

	@Value("${spring.mail.username}")
	private String senderAddress;
	
	@Override
	public String createCode() {
		String code = RandomStringUtils.random(6, 33, 125, false, true);
		return code;
	}
	
	@Override
	public String createPassword() {
		String password = RandomStringUtils.random(10, 33, 125, false, false);
		return password;
	}
	
	@Override
	public void setCodeSession(HttpSession codeSession) {
		codeSession.setMaxInactiveInterval(3*60);
		codeSession.setAttribute("code", createCode());
	}
	
	@Override
    public void sendCodeEmail(String memberEmail, HttpSession codeSession) {
		SimpleMailMessage memberCodeEmailVo = new MemberCodeEmailVo(memberEmail, (String) codeSession.getAttribute("code"));
		javaMailSender.send(memberCodeEmailVo);
    }
	
	@Override
	public void sendPasswordEmail(String memberEmail, String password) {
		SimpleMailMessage memberPasswordEmailVo = new MemberPasswordEmailVo(memberEmail, password);
		javaMailSender.send(memberPasswordEmailVo);
	}
	
}