package kr.iei.hotel.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.iei.hotel.member.dto.MemberJoinFormDto;

@Mapper
public interface MemberJoinDao {

	@Insert("INSERT INTO MEMBER ("
			+ " memberNumber,		memberEmail,		memberPassword, 	memberName,"
			+ " memberNick,			memberPhone,		memberRegDate,		memberUnRegDate,	memberPwChangeDate,"
			+ " memberAgree,		memberGrade,		memberRole,			memberKey"
			+ " )"
			+ " VALUES"
			+ " ("
			+ " '${memberNumber}',	'${memberEmail}',	'${memberPassword}','${memberName}',"
			+ " '${memberNick}',	'${memberPhone}',	SYSDATE,			'${memberUnRegDate}',SYSDATE,"
			+ " '${memberAgree}',	'GRADE_GENERAL',	'ROLE_REGURAL',		'${memberKey}'"
			+ " )")
	void join(MemberJoinFormDto memberJoinFormDto);

	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberEmail = '${memberEmail}'")
	int checkEmail(String memberEmail);

	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberNick = '${memberNick}'")
	int checkNick(String memberNick);
	
	@Update("UPDATE MEMBER SET"
			+ " memberPassword = '${password}'"
			+ " WHERE memberEmail = '${memberEmail}'")
	void changePassword(String password, String memberEmail);

	@Update("UPDATE MEMBER SET"
			+ " memberKey = '${memberKey}'"
			+ " WHERE memberEmail = '${memberEmail}'")
	void addKey(String memberEmail, String memberKey);
}
