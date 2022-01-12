package com.spring.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.web.dao.QBoardDAO;
import com.spring.web.service.QBoardService;
import com.spring.web.vo.QBoardVO;

@Service("qboardService")
public class QBoardServiceImpl implements QBoardService{

	@Autowired
	QBoardDAO qboardDAO;

	@Override
	public void insertBoard(QBoardVO vo) {
		qboardDAO.insertBoard(vo);
		
	}

	@Override
	public void deleteBoard(QBoardVO vo) {
		qboardDAO.deleteBoard(vo);
		
	}

	@Override
	public void updateBoard(QBoardVO vo) {
		qboardDAO.updateBoard(vo);
		
	}

	@Override
	public QBoardVO getBoard(QBoardVO vo) {
		
		return qboardDAO.getBoard(vo);
	}

	@Override
	public List<QBoardVO> getBoardList(QBoardVO vo) {
		
		return qboardDAO.getBoardList();
	}
}
