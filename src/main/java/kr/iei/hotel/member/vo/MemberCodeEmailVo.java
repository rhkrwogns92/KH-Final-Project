package kr.iei.hotel.member.vo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;

public class MemberCodeEmailVo extends SimpleMailMessage {
	
	@Value("${spring.mail.username}")
	private String from;

	public MemberCodeEmailVo(String to, String code) {
		super.setFrom(this.from);
		super.setTo(to);
		super.setSubject("(HUG-HOTEL) 인증번호를 알려드립니다.");
		super.setText("홈페이지에서 인증번호 " + code + " 를 입력하시기 바랍니다.");
	}

}
