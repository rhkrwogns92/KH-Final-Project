package kr.iei.hotel.member.vo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;

public class MemberPasswordEmailVo extends SimpleMailMessage{

	@Value("${spring.mail.username}")
	private String from;

	public MemberPasswordEmailVo(String to, String password) {
		super.setFrom(this.from);
		super.setTo(to);
		super.setSubject("(HUG-HOTEL) 비밀번호가 변경되었습니다.");
		super.setText("홈페이지에서 임시비밀번호 " + password + " 로 접속하시기 바랍니다.");
	}

}
