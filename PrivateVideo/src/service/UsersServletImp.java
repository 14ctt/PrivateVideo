package service;

import java.util.List;

import entity.Movies;
import entity.Users;


public interface UsersServletImp {
	public List<Users> usersSelect()throws Exception;//查询所有用户接口
	public void addUsers(Users userr) throws Exception;//添加用户接口
	public void delUsers(Users userr) throws Exception;//删除用户接口
	public List<Users> addSelt(String name)throws Exception;//模糊查询
	public void updateUsers(Users userr) throws Exception;//更新用户信息
	public Users usersSelectId(int id) throws Exception;//通过主键查询某一个用户的信息,显示在更新页面
	
	public List voidSelt(int name)throws Exception;
	public List voidSelect()throws Exception;
	public void updateUser(Users userr) throws Exception;
	 public Movies voidXq(int id) throws Exception;
	/**查询定单*/
	public List findOrders(int id) throws Exception;
	/**查询创建每月消费柱状图所需数据*/
	public List findorder(int uid) throws Exception;
}
