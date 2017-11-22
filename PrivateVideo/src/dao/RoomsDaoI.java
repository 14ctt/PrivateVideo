package dao;

import java.util.List;

import entity.Rooms;



public interface RoomsDaoI extends EntityDaoI{
	public List findRoomType() throws Exception ;
	public Rooms findPriceByType(Rooms room) throws Exception ;
}
