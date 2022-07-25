package com.shop.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertUser(UserVO vo) {
		System.out.println("===> Mybatis insertUser() 기능 작동");
		mybatis.insert("UserDAO.insertUser", vo);
	}
	
	public void updateUser(UserVO vo) {
		System.out.println("===> Mybatis updateUser() 기능 작동");
		mybatis.update("UserDAO.updateUser", vo);
	}
	
	public void deleteUser(UserVO vo) {
		System.out.println("===> Mybatis deleteUser() 기능 작동");
		mybatis.delete("UserDAO.deleteUser", vo);
	}
	
	public List<UserVO> selectUser(UserVO vo) {
		System.out.println("===> Mybatis selectUser() 기능 작동");
		return mybatis.selectOne("UserDAO.selectUser", vo);
	}
	
	public UserVO getUser(UserVO vo) {
		System.out.println("===> Mybatis getUser() 기능 작동");
		return (UserVO) mybatis.selectOne("UserDAO.getUser", vo);
	}

}
