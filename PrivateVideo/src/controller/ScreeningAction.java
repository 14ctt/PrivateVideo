package controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import convert.JsonDateValueProcessor;
import entity.Rooms;
import entity.Screenings;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.PropertyFilter;
import service.ScreeningServiceI;

public class ScreeningAction extends ActionSupport{
	private ScreeningServiceI screeningServiceI;
	private Screenings screening;
	
	public ScreeningServiceI getScreeningServiceI() {
		return screeningServiceI;
	}
	public void setScreeningServiceI(ScreeningServiceI screeningServiceI) {
		this.screeningServiceI = screeningServiceI;
	}
	public Screenings getScreening() {
		return screening;
	}
	public void setScreening(Screenings screening) {
		this.screening = screening;
	}
	public String findAllScreenings() throws Exception {
		List screenings = screeningServiceI.findAllScreenings(screening);
		ServletActionContext.getRequest().setAttribute("Screenings", screenings);
		return "getAllSuc";
	}

	public String addScreening() throws Exception {
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
		
		screeningServiceI.addScreening(getScreening());
		return this.NONE;
	}
	
	public String updateScreening() throws Exception {
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
		
		screeningServiceI.updateScreening(getScreening());
		return "updateSuc";
	}
	public String delectScreening() throws Exception {
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
		screeningServiceI.delScreening(screening);
		return "delectSuc";
	}

	public String findScreeningByID() throws Exception{
		Screenings findscreening = screeningServiceI.findScreeningByID(screening);
		ServletActionContext.getRequest().setAttribute("Screenings",findscreening);
		return this.NONE;
	}
	public String findScreeningsByscdate() throws Exception{
		
			String date=ServletActionContext.getRequest().getParameter("date");
			String ajax=ServletActionContext.getRequest().getParameter("ajax");
			if(date==""||date==null){
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
				date=df.format(new Date());
			}
			System.out.println(ajax);
			System.out.println(date);
			List<Screenings> screenings=screeningServiceI.findScreeningsByscdate(date);
			System.out.println(screenings);
			if(ajax!=null){
				PrintWriter out = ServletActionContext.getResponse().getWriter();
				JsonConfig config=new JsonConfig();
				 config.setJsonPropertyFilter(new PropertyFilter() {
			            public boolean apply(Object arg0, String arg1, Object arg2) {
			                 if (arg1.equals("orderses")) {
			                        return true;
			                    } else {
			                        return false;
			                    }
			            }
			        });
				JsonDateValueProcessor jsonValueProcessor = new JsonDateValueProcessor();  
			    config.registerJsonValueProcessor(Date.class, jsonValueProcessor);  
				JSONArray array= JSONArray.fromObject(screenings,config);
				System.out.println(array.toString());
				out.print(array.toString());
				
			}else{
				ServletActionContext.getRequest().setAttribute("Screenings",screenings);
			}
			return this.NONE;
	}
	
	public String findDatelimit4() throws Exception{
		List date=screeningServiceI.findDatelimit4();
		ServletActionContext.getRequest().setAttribute("date",date);
		return this.NONE;
	}
	
}
