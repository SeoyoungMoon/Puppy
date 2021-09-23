package com.spring.puppy.command;

import java.sql.Timestamp;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoastBoardVO {
	
	private int bbno;
    private String title;
    private String writer;
    private Timestamp regdate;
    private Timestamp updatedate;
    private int view_cnt;
    private int like_cnt;
	public void addObject(String string, Map<String, Object> map) {}
	public void setViewName(String string) {}

}
