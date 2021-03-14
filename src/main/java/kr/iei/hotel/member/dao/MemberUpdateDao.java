package kr.iei.hotel.member.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.iei.hotel.member.dto.MemberDto;

@Mapper
public interface MemberUpdateDao {
	
	@Update("UPDATE MEMBER SET"
			+ " memberPwChangeDate = ADD_MONTHS(SYSDATE, -2)"
			+ " WHERE memberEmail = '${memberEmail}'")
	void updatePwChangeDate(String memberEmail);

	@Delete("DELETE FROM REPLY"
			+ " WHERE memberNumber = #{memberNumber}")
	void deleteReply(MemberDto memberDto);
	
	@Update("UPDATE MEMBER SET"
			+ "	memberEmail = NULL, memberPassword = NULL, memberName = NULL, memberNick = NULL,"
			+ "	memberPhone = NULL, memberUnRegDate = SYSDATE, memberAgree = NULL, memberRole = NULL, memberKey = NULL"
			+ " WHERE memberEmail = '${memberEmail}'")
	int unRegister(MemberDto memberDto);
}
