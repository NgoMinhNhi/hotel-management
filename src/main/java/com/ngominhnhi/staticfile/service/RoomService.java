package com.ngominhnhi.staticfile.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ngominhnhi.staticfile.DAO.RoomDAO;
import com.ngominhnhi.staticfile.entities.Room;

@Service
@Transactional
public class RoomService {
	@Autowired
	private RoomDAO roomDAO;
	public List<Room> findAll(){
		List<Room> listRoom = roomDAO.findAll();
		
		return listRoom;
	}
	public void save(Room room) {
		roomDAO.save(room);
	}
	public Room findByName(String name) {
		return roomDAO.findByName(name);
	}
}
