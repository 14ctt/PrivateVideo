package service;

import java.util.List;

import dao.EntityDaoI;
import entity.Lunbo;

public class LunboServlet implements LunboServletImp{
    private EntityDaoI daolun;
    
	public EntityDaoI getDaolun() {
		return daolun;
	}

	public void setDaolun(EntityDaoI daolun) {
		this.daolun = daolun;
	}

	public void addLunbo(Lunbo lunbo) throws Exception{
		daolun.addObject(lunbo);
	}
	public List lunboSelect() throws Exception{
		return daolun.findAllObject(Lunbo.class);
	}
	public void delLunbo(Lunbo lunbo) throws Exception{
		daolun.delObject(lunbo);
	}
}
