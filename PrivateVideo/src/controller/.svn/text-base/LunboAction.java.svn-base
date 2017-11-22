package controller;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.Lunbo;
import entity.Users;
import service.LunboServletImp;

public class LunboAction extends ActionSupport {
 private LunboServletImp lunboServletImp;
 private Lunbo lunbo;
 
public Lunbo getLunbo() {
	return lunbo;
}

public void setLunbo(Lunbo lunbo) {
	this.lunbo = lunbo;
}

public LunboServletImp getLunboServletImp() {
	return lunboServletImp;
}

public void setLunboServletImp(LunboServletImp lunboServletImp) {
	this.lunboServletImp = lunboServletImp;
}

public String addLunbo() throws Exception{	   
	lunboServletImp.addLunbo(lunbo);
	   return "addLunbo";
}

public String lunboSelect() throws Exception{
	List<Lunbo> lun = lunboServletImp.lunboSelect();
	ServletActionContext.getRequest().setAttribute("lun", lun);
	return this.NONE;
}

public String delLunbo() throws Exception{
	lunboServletImp.delLunbo(lunbo);
	return this.NONE;
}
}
