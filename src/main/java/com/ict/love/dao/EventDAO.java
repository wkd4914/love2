package com.ict.love.dao;

import java.util.List;

import com.ict.love.vo.Event;

public interface EventDAO {
	public List<Event> selectEventList(Event ei);
	public int insertEvent(Event ei);
	public int deleteEvent(int eno);
	public Event selectEvent(Integer eno);
	public int updateEvent(Event ei);

}

