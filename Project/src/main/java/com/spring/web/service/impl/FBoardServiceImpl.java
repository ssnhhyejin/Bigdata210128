package com.spring.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.web.dao.FBoardDAO;
import com.spring.web.service.FBoardService;
import com.spring.web.vo.FBoardVO;

@Service("fboardService")
public class FBoardServiceImpl implements FBoardService{
	
	@Autowired
	FBoardDAO fboardDAO;
	
	@Override
	public void insertBoard(FBoardVO vo) {
		fboardDAO.insertBoard(vo);
		
	}

	@Override
	public void deleteBoard(FBoardVO vo) {
		fboardDAO.deleteBoard(vo);
		
	}

	@Override
	public void updateBoard(FBoardVO vo) {
		fboardDAO.updateBoard(vo);
	}

	@Override
	public FBoardVO getBoard(FBoardVO vo) {
		
		return fboardDAO.getBoard(vo);
	}

	@Override
	public List<FBoardVO> getBoardList(FBoardVO vo) {
		
		return fboardDAO.getBoardList();
	}

}
