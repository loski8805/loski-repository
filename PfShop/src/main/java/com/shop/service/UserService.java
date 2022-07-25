package com.shop.service;

import java.util.List;

import com.shop.model.UserVO;

public interface UserService {
	
	void insert(UserVO vo);
	void update(UserVO vo);
	void delete(UserVO vo);
	UserVO getUser(UserVO vo);
	List<UserVO> getUserList(UserVO vo);
	
	List<UserVO> selectUser(UserVO vo);

}
