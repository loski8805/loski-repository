package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.model.UserDAOMybatis;
import com.shop.model.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAOMybatis userDAO;

	@Override
	public void insert(UserVO vo) {
		userDAO.insertUser(vo);
	}

	@Override
	public void update(UserVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(UserVO vo) {
		userDAO.deleteUser(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}

	@Override
	public List<UserVO> getUserList(UserVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserVO> selectUser(UserVO vo) {
		return userDAO.selectUser(vo);
	}
	

}
