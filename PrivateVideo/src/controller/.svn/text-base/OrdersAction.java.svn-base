package controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.Movies;
import entity.Orders;
import entity.Rooms;
import entity.Screenings;
import net.sf.json.JSONArray;
import service.OrderServiceI;
import service.ScreeningServiceI;

public class OrdersAction extends ActionSupport {
	private OrderServiceI orderServiceI;
	private Orders order;
	private ScreeningServiceI screeningServiceI;
	
	public ScreeningServiceI getScreeningServiceI() {
		return screeningServiceI;
	}

	public void setScreeningServiceI(ScreeningServiceI screeningServiceI) {
		this.screeningServiceI = screeningServiceI;
	}

	public OrderServiceI getOrderServiceI() {
		return orderServiceI;
	}

	public void setOrderServiceI(OrderServiceI orderServiceI) {
		this.orderServiceI = orderServiceI;
	}

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {
		this.order = order;
	}

	public String findAllOrders() throws Exception {
		List orders = orderServiceI.findAllOrders(order);
		ServletActionContext.getRequest().setAttribute("Orders", orders);
		return "getAllSuc";
	}

	public String addOrder() throws Exception {
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		List orders=orderServiceI.findOrderByScid(order);
		List rooms=orderServiceI.findRoomByType(order);
		List ordersRoom=new ArrayList();
		
		for(int i=0;i<orders.size();i++){
			ordersRoom.add(((Orders)orders.get(i)).getRooms());
		}
		rooms.removeAll(ordersRoom);
		order.setRooms((Rooms) rooms.get(0));;
		order.setReconfirmtime(new Date());
		orderServiceI.addOrders(getOrder());
		out.print(1);
		return this.NONE;
	}

	public String delectOrder() throws Exception {
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
		orderServiceI.delOrders(order);
		return "delectSuc";
	}

	public String findOrderByUsername() throws Exception {
		Orders findorder = orderServiceI.findOrdersByUserName(order);
		ServletActionContext.getRequest().setAttribute("Orders", findorder);
		return this.NONE;
	}

	public String findRoomsBySCIDandRoomName() throws Exception {
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
		String scarr=ServletActionContext.getRequest().getParameter("scarr");
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		
		int yushu = 0;
		
		if(scarr!=null&&scarr!=""){
			JSONArray array= JSONArray.fromObject(scarr);
			List list=new ArrayList();
			for(int i=0;i < array.size();i++){
				
				Screenings sc=new Screenings();
				sc.setScid(Integer.parseInt(array.get(i).toString()));
				getOrder().setScreenings(sc);
				yushu = orderServiceI.findRoomsBySCIDandRoomName(order);
				list.add(yushu);
			}
			JSONArray ysjson=JSONArray.fromObject(list);
			out.println(ysjson);
		}else{
			yushu = orderServiceI.findRoomsBySCIDandRoomName(order);
			out.println(yushu);
		}
		return this.NONE;
	}
}