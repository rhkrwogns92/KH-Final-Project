package kr.iei.hotel.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.travel.mapper.TravelMapper;
import kr.iei.hotel.travel.vo.TravelVO;

@Service
public class TravelServiceImpl implements TravelService {
	
	@Autowired
	TravelMapper travelMapper;
	
	
	@Override
	public List<TravelVO> selectTourList()throws Exception {
		
		return travelMapper.selectTourList();
	}
	
	@Override
	public TravelVO selectTourDetail(String name)throws Exception {
		
		return travelMapper.selectTourDetail(name);
	}
	
	@Override
	public List<TravelVO> selectFoodList()throws Exception {
		return travelMapper.selectFoodList();
	}
	
	@Override
	public TravelVO selectFoodDetail(String name)throws Exception {
		return travelMapper.selectFoodDetail(name);
	}
}
