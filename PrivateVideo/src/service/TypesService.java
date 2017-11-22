package service;

import java.util.List;

import dao.EntityDaoI;
import entity.Types;
import page.PageInfo;

public class TypesService implements ITyepsService {
	private EntityDaoI edi;
	
	public EntityDaoI getEdi() {
		return edi;
	}

	public void setEdi(EntityDaoI edi) {
		this.edi = edi;
	}

	public TypesService() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void addtypes(Types types) throws Exception {
		edi.addObject(types);
	}

	@Override
	public void findTypesFenYe(Types types,PageInfo pageInfo) throws Exception {
		
	}

	@Override
	public List findAllTyeps() throws Exception {	
		return edi.findAll("From Types");
		//return edi.findAll(Types.class);
	}
	
	public Types findTyeps(int id) throws Exception{
		return (Types) edi.findObjectByID(Types.class, id);
	}
	
	public void updateType(Types obj)throws Exception{
		edi.updateObject(obj);
	}
	public void delType(Types obj)throws Exception{
		edi.delObject(obj);
	}
}
