package service;

import java.util.List;

import dao.OrdersDaoI;
import entity.Orders;
import entity.Rooms;

public class OrderServiceImp implements OrderServiceI {
	private OrdersDaoI ordersDaoI;
	
	
	public OrdersDaoI getOrdersDaoI() {
		return ordersDaoI;
	}

	public void setOrdersDaoI(OrdersDaoI ordersDaoI) {
		this.ordersDaoI = ordersDaoI;
	}

	@Override
	public Orders findOrdersByUserName(Orders Orders) throws Exception {
		// TODO Auto-generated method stub
		return (entity.Orders) ordersDaoI.findOrdersByUserName(Orders, Orders.getUsers().getUsername());
	}


	@Override
	public List findAllOrders(Orders Orders) throws Exception {
		// TODO Auto-generated method stub
		return ordersDaoI.findAll(Orders.getClass());
	}

	@Override
	public void delOrders(Orders Orders) throws Exception {
		ordersDaoI.delObject(Orders);
	}

	@Override
	public void addOrders(Orders Orders) throws Exception {
		ordersDaoI.addObject(Orders);
	}

	@Override
	public int findRoomsBySCIDandRoomName(Orders Orders) throws Exception {
		return ordersDaoI.findRoomsBySCIDandRoomName(Orders);
	}
	@Override
	public List findRoomByType(Orders Orders) throws Exception {
		// TODO Auto-generated method stub
		return ordersDaoI.findRoomByType(Orders);
	}

	@Override
	public List findOrderByScid(Orders Orders) throws Exception {
		// TODO Auto-generated method stub
		return ordersDaoI.findOrderByScid(Orders);
	}
}
