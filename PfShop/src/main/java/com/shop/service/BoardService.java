package com.shop.service;

import java.util.List;

import com.shop.model.BoardVO;

public interface BoardService {
	
	void insertBoard(BoardVO vo);
	void updateBoard(BoardVO vo);
	void deleteBoard(BoardVO vo);
	BoardVO getBoard(BoardVO vo);
	List<BoardVO> getBoardList(BoardVO vo);

}
