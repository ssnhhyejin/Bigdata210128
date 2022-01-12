package com.spring.web.service;

import org.springframework.stereotype.Service;

import com.spring.web.vo.UserVO;

@Service
public interface UserService {
	public UserVO getUser(UserVO vo);
	public void insertUser(UserVO vo);
	public void deleteUser(UserVO vo);
	public void updateUser(UserVO vo);
	public UserVO userInfo(UserVO vo);
	
}
