package dao;

import java.util.List;


import page.PageInfo;

public interface EntityDaoI extends IFindAllTypes{
	public Object findObjectByID(Class cls,int id);
	public void updateObject(Object obj)throws Exception;
	public List<Object> findAll(String sql) throws Exception;
	public List<Object> findAllObject(Class cls,PageInfo pageInfo)throws Exception;
	public void delObject(Object obj) throws Exception;
	public void addObject(Object obj) throws Exception;
	public String getMaxIdByTypeno(Class clazz,String idnoName,String typenoName,String value) throws Exception;
/******************************************************************/
	public List<Object> findAllObject(Class cls)throws Exception;//波哥添加查询所有用户方法
	public List<Object> mistedSelect(Class cls,String name)throws Exception;//模糊查询
	public List<Object> voidSelect(Class cls,int name)throws Exception;//电影类别
	
	public List<Object> findAll(Class cls) throws Exception;
	public List finddcd(String sql) throws Exception;
}
