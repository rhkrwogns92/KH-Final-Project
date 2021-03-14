package kr.iei.hotel.guestroom.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.guestroom.mapper.GuestRoomMapper;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;


@Service
public class GuestRoomService {
	
	@Autowired
	GuestRoomMapper guestRoomMapper;
	//-------------------------------------User--------------------------------------------
	
	//객실 리스트
	public List<GuestRoomVO> guestRoomList(int standardNumber)throws Exception {
		return guestRoomMapper.guestRoomList(standardNumber);
	}
	//객실 상세 리스트
	public GuestRoomVO guestRoomDetailList(GuestRoomVO guestRoomVO)throws Exception {
		return guestRoomMapper.guestRoomDetailList(guestRoomVO);
	}
	
	//-------------------------------------Admin--------------------------------------------
	
	//객실 관리 리스트
	public List<GuestRoomVO> guestRoomAdminList()throws Exception {
		return guestRoomMapper.guestRoomAdminList();
	}
	//객실 추가
	public void guestRoomInsert(GuestRoomVO guestRoomVO)throws Exception {
		guestRoomMapper.guestRoomInsert(guestRoomVO);
	}
	//객실 삭제
	public void guestRoomDelete(String guestRoomName)throws Exception {
		guestRoomMapper.guestRoomDelete(guestRoomName);
	}
	//객실 관리 정보 리스트
	public List<GuestRoomVO> guestRoomAdminInfoList(String guestRoomName)throws Exception {
		return guestRoomMapper.guestRoomAdminInfoList(guestRoomName);
	}
	//객실 정보 추가
	public void guestRoomInfoInsert(GuestRoomVO guestRoomVO)throws Exception {
		guestRoomMapper.guestRoomInfoInsert(guestRoomVO);
	}
	//객실 정보 삭제
	public void guestRoomInfoDelete(int guestRoomNo)throws Exception {
		guestRoomMapper.guestRoomInfoDelete(guestRoomNo);
	}
	
}
