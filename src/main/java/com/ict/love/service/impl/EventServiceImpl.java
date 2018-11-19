package com.ict.love.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ict.love.dao.EventDAO;
import com.ict.love.service.EventService;
import com.ict.love.vo.Event;

@Service
public class EventServiceImpl implements EventService {
	@Autowired
	EventDAO ed;

	@Override
	public List<Event> selectEventList(Event ei) {
		// TODO Auto-generated method stub
		return ed.selectEventList(ei);
	}

	@Override
	public int insertEvent(Event ei) {
		// TODO Auto-generated method stub
		return ed.insertEvent(ei);
	}

	@Override
	public int deleteEvent(int eno) {
		// TODO Auto-generated method stub
		return ed.deleteEvent(eno);
	}

	@Override
	public Event selectEvent(Integer eno) {
		// TODO Auto-generated method stub
		return ed.selectEvent(eno);
	}

	@Override
	public int updateEvent(Event ei) {
		// TODO Auto-generated method stub
		return ed.updateEvent(ei);
	}

}
