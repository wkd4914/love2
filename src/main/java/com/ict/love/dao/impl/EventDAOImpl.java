package com.ict.love.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.love.dao.EventDAO;
import com.ict.love.vo.Event;

@Repository
public class EventDAOImpl implements EventDAO {
	@Autowired
	private SqlSession ss;


	@Override
	public List<Event> selectEventList(Event ei) {
		// TODO Auto-generated method stub
		return ss.selectList("SQL.event.selecteventlist", ei);
	}

	@Override
	public int insertEvent(Event ei) {
		// TODO Auto-generated method stub
		System.out.println("params ei -> : " + ei);
		return ss.insert("SQL.event.insertevent", ei);
	}

	@Override
	public int deleteEvent(int eno) {
		// TODO Auto-generated method stub
		return ss.delete("SQL.event.deleteevent", eno);
	}

	@Override
	public Event selectEvent(Integer eno) {
		// TODO Auto-generated method stub
		return ss.selectOne("SQL.event.selectevent", eno);
	}

	@Override
	public int updateEvent(Event ei) {
		// TODO Auto-generated method stub
		return ss.update("SQL.event.updateevent", ei);
	}

}
