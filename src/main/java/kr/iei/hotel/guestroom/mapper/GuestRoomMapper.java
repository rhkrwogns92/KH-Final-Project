package kr.iei.hotel.guestroom.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import kr.iei.hotel.guestroom.vo.GuestRoomVO;


@Mapper
public interface GuestRoomMapper {
	
	//-------------------------------------User--------------------------------------------
	
	//객실 리스트
	public List<GuestRoomVO> guestRoomList(int standardNumber)throws Exception;
	//객실 상세 리스트
	public GuestRoomVO guestRoomDetailList(GuestRoomVO guestRoomVO)throws Exception;
	
	//-------------------------------------Admin--------------------------------------------
	
	//객실 관리 리스트
	public List<GuestRoomVO> guestRoomAdminList()throws Exception;
	//객실 추가
	public void guestRoomInsert(GuestRoomVO guestRoomVO)throws Exception;
	//객실 삭제
	public void guestRoomDelete(String guestRoomName)throws Exception;
	//객실 관리 정보 리스트
	public List<GuestRoomVO> guestRoomAdminInfoList(String guenstRoomName)throws Exception;
	//객실 정보 추가
	public void guestRoomInfoInsert(GuestRoomVO guestRoomVO)throws Exception;
	//객실 정보 삭제
	public void guestRoomInfoDelete(int guestRoomNo)throws Exception;

}
