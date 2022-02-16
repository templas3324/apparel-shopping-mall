package com.oreot.biz.stock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreot.biz.stock.dao.StockDAO;
import com.oreot.biz.stock.dao.StockVO;

@Service
public class StockServiceImpl implements StockService{
	@Autowired
	StockDAO stockDAO;
	
	
	@Override
	public void insertService(StockVO vo) {
		//stockDAO.insert(vo);
	}

	//관심상품 정보 보기
	@Override
	public List<StockVO> getInterestInfo(int num) {
			return stockDAO.getInterestInfo(num);
	}

	//회원 번호 가져오기
	@Override
	public int getMemberNum(String id) {
		return stockDAO.getMemberNum(id);
	}

	// 장바구니 정보 보기
	@Override
	public List<StockVO> getBasketInfo(int num) {
		return stockDAO.getBasketInfo(num);
	}

	//관심상품 삭제
	@Override
	public void deleteInterests(StockVO vo) {
		stockDAO.deleteInterests(vo);
	}

	//장바구니 등록
	@Override
	public void insertBasketInfo(StockVO vo) {
		stockDAO.insertBasketInfo(vo);
		
	}
	
	//관심상품 등록
	@Override
	public void getInterests(StockVO vo) {
		stockDAO.getInterests(vo);
	}

	//카테고리별 상품리스트
	@Override
	public List<StockVO> getstockByCategory(StockVO vo) {
		
		return stockDAO.getstock(vo);		
	}

	//옵션 색상 종류 (따로)
	public List<String> getcolorList(String optionColorList) {
		return stockDAO.getcolor(optionColorList);			
	}
	
	public StockVO getProduct(int stockNum) {
		
		return stockDAO.getoneProduct(stockNum);
	}
	
}
