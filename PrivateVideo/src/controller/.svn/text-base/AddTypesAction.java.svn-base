package controller;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.Movies;
import entity.Types;
import service.ITyepsService;

public class AddTypesAction extends ActionSupport {
	private ITyepsService addtypes;
	private Types types;
	private String tyid;//批量删除
	
	
	public AddTypesAction() {
		// TODO Auto-generated constructor stub 
	}

	public Types getTypes() {
		return types;
	}

	public void setTypes(Types types) {
		this.types = types;
	}

	public ITyepsService getAddtypes() {
		return addtypes;
	}

	public void setAddtypes(ITyepsService addtypes) {
		this.addtypes = addtypes;
	}
	
	public String addtype () throws Exception{
		addtypes.addtypes(this.getTypes());
		return this.NONE;
	}
	
	public String getTyid() {
		return tyid;
	}

	public void setTyid(String tyid) {
		this.tyid = tyid;
	}

	public String findAllTypes() throws Exception{
		List<Types> types = addtypes.findAllTyeps();
		ServletActionContext.getRequest().setAttribute("types", types);
		return this.NONE;
	}
	
	public String findTypesById() throws Exception{
		
		int id  = Integer.parseInt(ServletActionContext.getRequest().getParameter("id")); 
		//System.out.println(id);
		Types types = addtypes.findTyeps(id);
		//System.out.println(types.getTypename());
		ServletActionContext.getRequest().setAttribute("type", types);
		return "updatetypes";
	}
	
	public String updateType() throws Exception{
//		int id = Integer.parseInt(ServletActionContext.getRequest().getParameter("typeid"));
//		getTypes().setTypeid(id);
		addtypes.updateType(getTypes());
		return this.NONE;
	}
	public String delTypes()throws Exception{
		addtypes.delType(getTypes());
		return this.NONE;
	}
	
	public String delMany()throws Exception{//批量删除
		
		//System.out.println(getTyid());
//String [] i = ServletActionContext.getRequest().getParameterValues("tid");
//		System.out.println(ServletActionContext.getRequest().getParameter("tyid"));
//		String i = ServletActionContext.getRequest().getParameter("tyid");
		//String[] i =(String [])ActionContext.getContext().getParameters().get("id");
//		System.out.println(ServletActionContext.getRequest().getParameterValues("tyid")[0]);
//		System.out.println(i);
		
		for(String s:getTyid().split(",")){
			int id = Integer.parseInt(s);
			Types t = new Types();
			t.setTypeid(id);
			addtypes.delType(t);
		}
		System.out.print("1");
		return this.NONE;
	}
}
