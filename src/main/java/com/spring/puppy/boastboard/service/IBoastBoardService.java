package com.spring.puppy.boastboard.service;

import java.util.List;

import com.spring.puppy.command.BoastBoardVO;
import com.spring.puppy.util.PageVO;

public interface IBoastBoardService {
	
	//�� ���
	void boastRegist(BoastBoardVO vo);
	
	//�� ���
	List<BoastBoardVO> getList();
	
	//�� �󼼺���
	BoastBoardVO getContent(int bbno);
	
	//���ƿ䴩����
	BoastBoardVO getCount(int like_cnt);

	static List<BoastBoardVO> listAll(String search_option, String keyword, Object start, Object end) {
		return null;
	}
	

}
