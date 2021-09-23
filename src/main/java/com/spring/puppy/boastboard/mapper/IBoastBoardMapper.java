package com.spring.puppy.boastboard.mapper;

import java.util.List;

import com.spring.puppy.command.BoastBoardVO;
import com.spring.puppy.util.PageVO;

public interface IBoastBoardMapper {
	
	//�� ���
	void boastRegist(BoastBoardVO vo);
		
	//�� ���
	List<BoastBoardVO> getList();
	
	//�� �󼼺���
	BoastBoardVO getContent(int bbno);
	
	//���ƿ䴩����
	BoastBoardVO getCount(int like_cnt);

}
