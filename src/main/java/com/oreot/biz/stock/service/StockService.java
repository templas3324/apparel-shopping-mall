package com.oreot.biz.stock.service;

import java.util.List;

import com.oreot.biz.stock.dao.StockVO;

public interface StockService { 
	// CRUD 기능의 메서드 구현
	
	void insertService(StockVO vo); 
	
	int getMemberNum(String id); 
	
	List<StockVO> getInterestInfo(int memberNum); //관심상품 조회?
	
	List<StockVO> getBasketInfo(int num); // 장바구니 조회
	
	void deleteInterests(StockVO vo);
	
	void insertBasketInfo(StockVO vo);	
	
	//관심상품 등록
	void getInterests(StockVO vo);
	
//  카테고리별 상품 목록
	List<StockVO> getstockByCategory(StockVO vo);

	//상품 상세 보기
	StockVO getProduct(int stockNum);	
	
	List<String> getcolorList(String optionColorList);
}





 