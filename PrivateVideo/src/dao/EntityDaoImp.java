package dao;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import entity.Orders;
import entity.Rooms;
import page.PageInfo;

public class EntityDaoImp extends BaseDaoImp implements EntityDaoI,OrdersDaoI,ScreeningDaoI,RoomsDaoI {
	public Object findObjectByID(Class cls, int id) {
		return (Object) this.getHibernateTemplate().load(cls, id);
	}

	public void updateObject(Object obj) throws Exception {
		this.getHibernateTemplate().merge(obj);
		// 事务没有提交
	}

	public List<Object> findAllObject(Class cls,PageInfo pageInfo) throws Exception {
		return getPage("From "+cls.getName(), pageInfo);
	}

	public void delObject(Object obj) throws Exception {
		obj = this.getHibernateTemplate().merge(obj);
		this.getHibernateTemplate().delete(obj);
	}

	public void addObject(Object obj) throws Exception {
		this.getHibernateTemplate().save(obj);
		// 事务没有提交
	}
	//电影类别
		public List<Object> voidSelect(Class cls,int name)throws Exception {
			Query query = this.getSession().createQuery
					("From "+cls.getName()+" where types = "+name);
			return query.list();
		}

	public String getMaxSnoByCno() throws Exception {
		return "";
	}

	@Override
	public String getMaxIdByTypeno(Class clazz, String idnoName, String typenoName, String value) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> findAll(Class cls) throws Exception {
		Query query = this.getSession().createQuery("From "+cls.getName());
		return query.list();
		
	}

	@Override
	public List<Object> findAll(String sql) throws Exception {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find(sql);
	}
/********************************************************************************************/
	public List<Object> findAllObject(Class cls)throws Exception {
		//波哥查询所有用户代码
		Query query = this.getSession().createQuery("From "+cls.getName());
		return query.list();
	}
	
	public List<Object> mistedSelect(Class cls,String name)throws Exception {
		//模糊查询
		Query query = this.getSession().createQuery
				("From "+cls.getName()+" where username like:name");
		query.setString("name", "%" + name + "%");
		return query.list();
	}
	

	@Override
	public List<Orders> findOrdersByUserName(Orders Orders,String userName) throws Exception {
		Query query = this.getSession().createQuery("From "+Orders+"where Orders.users.username="+userName);
		return query.list();
	}

	@Override
	public int findRoomsBySCIDandRoomName(Orders Orders) throws Exception {
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
		Query query = this.getSession().createSQLQuery("select * from orders,rooms where roomtype='"+Orders.getRooms().getRoomtype()+"' and scid="+Orders.getScreenings().getScid()+" and orders.roomid=rooms.roomid");
		int yigou=query.list().size();
		//int count=Rooms.class.
		Query query2=this.getSession().createQuery("From Rooms where roomtype='"+Orders.getRooms().getRoomtype()+"'");
		int count=query2.list().size();
		int yushu=count-yigou;
		return yushu;
	}

	@Override
	public List findScreeningsByscdate(String scdate) throws Exception {
		Query query = this.getSession().createQuery("From Screenings where scdate='"+scdate+"'");
		return query.list();
	}

	@Override
	public List findDatelimit4() throws Exception {
		Query query = this.getSession().createSQLQuery("select  scdate from screenings where scdate>=now() group by scdate limit 4");
		return query.list();
	}

	@Override
	public List findRoomType() throws Exception {
		Query query = this.getSession().createQuery("From Rooms group by roomtype");
		return query.list();
	}

	@Override
	public Rooms findPriceByType(Rooms room) throws Exception {
		Query query = this.getSession().createQuery("From Rooms where roomtype='"+room.getRoomtype()+"' group by roomtype");
		return (Rooms) query.uniqueResult();
	}

	@Override
	public List findRoomByType(Orders Orders) throws Exception {
		Query query2=this.getSession().createQuery("From Rooms where roomtype='"+Orders.getRooms().getRoomtype()+"'");
		return query2.list();
	}

	@Override
	public List findOrderByScid(Orders Orders) throws Exception {
		Query query = this.getSession().createQuery("From Orders where rooms.roomtype='"+Orders.getRooms().getRoomtype()+"' and screenings.scid="+Orders.getScreenings().getScid());
		return query.list();
	}
	/**柱状图*/
	public List finddcd(String sql) throws Exception{
		Query query = this.getSession().createQuery(sql);
		return query.list();
	}
	
	

}
