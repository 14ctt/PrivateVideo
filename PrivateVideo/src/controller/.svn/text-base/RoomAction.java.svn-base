package controller;

import java.io.PrintWriter;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.Movies;
import entity.Rooms;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import service.IRoomService;

public class RoomAction extends ActionSupport {
	private Rooms room;
	private IRoomService rs;
	private String Rid;//批量删除
	
	public String getRid() {
		return Rid;
	}

	public void setRid(String rid) {
		Rid = rid;
	}

	public RoomAction() {
		// TODO Auto-generated constructor stub
	}
	
	public Rooms getRoom() {
		return room;
	}

	public void setRoom(Rooms room) {
		this.room = room;
	}

	public IRoomService getRs() {
		return rs;
	}

	public void setRs(IRoomService rs) {
		this.rs = rs;
	}

	public String addroom() throws Exception{
		rs.addRoom(getRoom());
		System.out.println(getRoom().getRoomname());
		return this.NONE;
	}
	
	public String findallroom() throws Exception{
		List<Rooms> rooms = rs.findAllRoom();
		ServletActionContext.getRequest().setAttribute("rooms", rooms);
		return this.NONE;
	}
	public String findroombyId() throws Exception{
		int id = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
		Rooms room = rs.findRoomById(id);
		ServletActionContext.getRequest().setAttribute("room", room);
		return "updateroom";
	}
	public String updateroom()throws Exception{
		rs.updateRoom(getRoom());
		return this.NONE;
	}
	public String delroom()throws Exception{
		rs.delRoom(getRoom());
		return this.NONE;
	}
	  
	//批量删除房间
	public String delmany() throws Exception{
	
		for(String s:getRid().split(",")){
			int id = Integer.parseInt(s);
			Rooms r = new Rooms();
			r.setRoomid(id);
			rs.delRoom(r);
			
		}
		
		return this.NONE;
	}
	public String findRoomType() throws Exception{
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
		List<Rooms> roomtype = rs.findRoomType();
		JSONArray typeArr=new JSONArray();
		for(Object room : roomtype){
			 JSONObject jo = new JSONObject();
			 jo.put("roomtype", ((Rooms)room).getRoomtype());
			 typeArr.add(jo);
		}
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		
		out.println(typeArr);
		return this.NONE;
	}
	public String findPriceByType() throws Exception{
		Rooms roomprice=rs.findPriceByType(room);
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		out.println(roomprice.getRoomprice());
		return this.NONE;
	}
	
	
}
