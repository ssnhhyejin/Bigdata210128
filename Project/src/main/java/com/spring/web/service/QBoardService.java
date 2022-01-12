package com.spring.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.web.vo.QBoardVO;

@Service
public interface QBoardService {

	public void insertBoard(QBoardVO vo);
	public void deleteBoard(QBoardVO vo);
	public void updateBoard(QBoardVO vo);
	public QBoardVO getBoard(QBoardVO vo);
	public List<QBoardVO> getBoardList(QBoardVO vo);
	
}
