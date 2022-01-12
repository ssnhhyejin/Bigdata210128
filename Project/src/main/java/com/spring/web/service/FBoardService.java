package com.spring.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.web.vo.FBoardVO;

@Service
public interface FBoardService {

	public void insertBoard(FBoardVO vo);
	public void deleteBoard(FBoardVO vo);
	public void updateBoard(FBoardVO vo);
	public FBoardVO getBoard(FBoardVO vo); 
	public List<FBoardVO> getBoardList(FBoardVO vo);
}
