package com.spring.puppy.boastboard.service;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.puppy.boastboard.mapper.IBoastBoardMapper;
import com.spring.puppy.command.BoastBoardVO;
import com.spring.puppy.util.PageVO;

@Service
public class BoastBoardService implements IBoastBoardService {
	
	@Autowired
	private IBoastBoardMapper mapper;

	@Override
	public void boastRegist(BoastBoardVO vo) {
		mapper.boastRegist(vo);
	}

	@Override
	public List<BoastBoardVO> getList() {
		
//		List<BoastBoardVO> list = mapper.getList(vo);
		
//		for(BoastBoardVO article : list) {
//			//���� �ð� �о����
//			long now = System.currentTimeMillis();
//			//�� �Խù����� �ۼ��ð� �о���� (�и���)
//			Timestamp regdate = article.getRegdate();
//		}
		return mapper.getList();
	}

	@Override
	public BoastBoardVO getContent(int bbno) {
		return null;
	}

	@Override
	public BoastBoardVO getCount(int like_cnt) {
		return null;
	}

	public static List<BoastBoardVO> listAll(String search_option, String keyword, Object start, Object end) {
		return null;
	}

}
