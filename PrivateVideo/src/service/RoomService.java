package service;

import java.util.List;

import dao.EntityDaoI;
import dao.RoomsDaoI;
import entity.Rooms;

public class RoomService implements IRoomService {
	private RoomsDaoI edi;
	public RoomService() {
		// TODO Auto-generated constructor stub
	}
	public EntityDaoI getEdi() {
		return edi;
	}
	public void setEdi(EntityDaoI edi) {
		this.edi = (RoomsDaoI) edi;
	}
	@Override
	public void addRoom(Rooms room) throws Exception {
		edi.addObject(room);
		
	}
	@Override
	public List findAllRoom() throws Exception {
		return edi.findAll(Rooms.class);
	}
	@Override
	public Rooms findRoomById(int id) throws Exception {		
		return (Rooms) edi.findObjectByID(Rooms.class, id);
	}
	@Override
	public void updateRoom(Rooms obj) throws Exception {
		edi.updateObject(obj);
		
	}
	@Override
	public void delRoom(Rooms obj) throws Exception {
		edi.delObject(obj);
	}
	@Override
	public List findRoomType() throws Exception {
		// TODO Auto-generated method stub
		return edi.findRoomType();
	}

	@Override
	public Rooms findPriceByType(Rooms room) throws Exception {
		// TODO Auto-generated method stub
		return edi.findPriceByType(room);
	}


}
