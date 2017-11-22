package controller;

import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.apache.struts2.ServletActionContext;
import org.jfree.data.category.DefaultCategoryDataset;

import com.opensymphony.xwork2.ActionSupport;

import entity.Movies;
import entity.Orders;
import entity.Users;
import page.PageInfo;
import service.UsersServletImp;



public class UsersAction extends ActionSupport {
	private UsersServletImp usersServletImp;
	private Users userr;	
	private String userspasswd;
	private String Uid;//批量删除
	private PageInfo pageinfo;//分页
	
	public String getUid() {
		return Uid;
	}

	public void setUid(String uid) {
		Uid = uid;
	}

	public String getUserspasswd() {
		return userspasswd;
	}

	public void setUserspasswd(String userspasswd) {
		this.userspasswd = userspasswd;
	}

	public Users getUserr() {
		return userr;
	}

	public void setUserr(Users userr) {
		this.userr = userr;
	}

	public UsersServletImp getUsersServletImp() {
		return usersServletImp;
	}

	public void setUsersServletImp(UsersServletImp usersServletImp) {
		this.usersServletImp = usersServletImp;
	}
	
	
	public PageInfo getPageinfo() {
		return pageinfo;
	}

	public void setPageinfo(PageInfo pageinfo) {
		this.pageinfo = pageinfo;
	}

	//查询所有用户
	public String usersSelect() throws Exception{
		List<Users> user = usersServletImp.usersSelect();
		ServletActionContext.getRequest().setAttribute("user", user);
		return this.NONE;
	}
	//通过主键查询单个用户-更新用
		 public String usersSelectId() throws Exception{
				int id = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
			    Users uselt = usersServletImp.usersSelectId(id);
				ServletActionContext.getRequest().setAttribute("uselt", uselt);
				return "addsel";
		 }
	//添加用户-后台
	public String addUsers() throws Exception{
		
		userr.setUserpasswd(this.makeMD5(userspasswd));//MD5加密用户密码
		usersServletImp.addUsers(userr);
		
		return this.NONE;
	}
	//添加用户2-注册
	public String addUsers2() throws Exception{
		
		userr.setUserpasswd(this.makeMD5(userspasswd));//MD5加密用户密码
		usersServletImp.addUsers(userr);
		
		return "addUsers";
	}
	//删除某个用户
	public String delUsers() throws Exception{
		usersServletImp.delUsers(userr);
		return this.NONE;
	}
	//批量删除用户
	public String delmany() throws Exception{
		
		for(String s:getUid().split(",")){
			int id = Integer.parseInt(s);
			Users user = new Users();
			user.setUserid(id);
			usersServletImp.delUsers(user);
		}
		 return this.NONE;
	}
	//模糊查询
		 public String addSelt() throws Exception{
				String name = ServletActionContext.getRequest().getParameter("name");
			 List<Users> uselt = usersServletImp.addSelt(name);
				ServletActionContext.getRequest().setAttribute("uselt", uselt);
				return "addselt";
		 }
	//更新修改用户
		 public String updateUsers() throws Exception{
			 
			 usersServletImp.updateUsers(userr);
			 return this.NONE;
		 }
		 
		 public String updateUser() throws Exception{			 
			 usersServletImp.updateUsers(userr);
			 return "userinfo";
		 }
			/**更新密码*/
		 public String updatepassword() throws Exception{
			 Users user = usersServletImp.usersSelectId(Integer.parseInt(String.valueOf(ServletActionContext.getRequest().getSession().getAttribute("userid"))));
			 String paw = this.makeMD5(this.getUserspasswd());
			 String ypaw = this.makeMD5(this.getUserr().getUserpasswd());
			 if(user.getUserpasswd().equals(ypaw)){
				 user.setUserpasswd(paw);
				 usersServletImp.updateUser(user);
				 return "changepwd";
			 }else{
				 ServletActionContext.getRequest().setAttribute("messing", "原密码错误！");
				 return "backUpdatePassword";
			 }
//			 user.setUserpasswd(paw);
//			 usersServletImp.updateUser(user);
//			 return "login";
		 }
		 public String usersSelectId2() throws Exception{
				int id = Integer.parseInt(String.valueOf(ServletActionContext.getRequest().getSession().getAttribute("userid")));
				System.out.println(id);
			    Users uselt = usersServletImp.usersSelectId(id);
				ServletActionContext.getRequest().setAttribute("uselt", uselt);
				return this.NONE;
		 }
	/**查询单个用户信息*/
		public String finduserById() throws Exception{
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			int id = Integer.parseInt(String.valueOf(ServletActionContext.getRequest().getSession().getAttribute("userid")));
			Users user =usersServletImp.usersSelectId(id);
			ServletActionContext.getRequest().setAttribute("user", user);
//			List<Users> users = new ArrayList<Users>();
//			users.add(user);
//			JSONArray us = JSONArray.fromObject(users);
//			PrintWriter pw = ServletActionContext.getResponse().getWriter();
//			pw.print(us);
//			pw.flush();
//			pw.close();
			return this.NONE;
		}

		 
	//MD5加密方法
	public String makeMD5(String password) {
		MessageDigest md;
		   try {
		    // 生成一个MD5加密计算摘要
		    md = MessageDigest.getInstance("MD5");
		    // 计算md5函数
		    md.update(password.getBytes());
		    // digest()最后确定返回md5 hash值，返回值为8为字符串。因为md5 hash值是16位的hex值，实际上就是8位的字符
		    // BigInteger函数则将8位的字符串转换成16位hex值，用字符串来表示；得到字符串形式的hash值
		    String pwd = new BigInteger(1, md.digest()).toString(16);
		    System.err.println(pwd);
		    return pwd;
		   } catch (Exception e) {
		    e.printStackTrace();
		   }
		   return password;
		}
	//电影分类查询
		public String voidSelt() throws Exception {
			int name =Integer.parseInt(ServletActionContext.getRequest().getParameter("name"));
			List<Movies> voide = usersServletImp.voidSelt(name);

			ServletActionContext.getRequest().setAttribute("voide", voide);
			return "voidSelt";
		}
		// 查询所有电影
			public String voidSelect() throws Exception {
				List<Movies> voi = usersServletImp.voidSelect();
				ServletActionContext.getRequest().setAttribute("voide", voi);
				return "voidSelect";
			}
			// 电影详情
			public String voidXq() throws Exception {
				int id = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
				Movies mov = usersServletImp.voidXq(id);
				ServletActionContext.getRequest().setAttribute("mov", mov);
				return "voidXq";
			}
			
/**查询订单11.14*/
			public String findorders() throws Exception{
				Date date = new Date();				
				int id = Integer.parseInt(String.valueOf(ServletActionContext.getRequest().getSession().getAttribute("userid")));
				List<Orders> order = usersServletImp.findOrders(id);
				ServletActionContext.getRequest().setAttribute("orders", order);
				List<Orders> outtime = new ArrayList<>();
				List<Orders> intime = new ArrayList<>();
				for(Orders o:order){					
					Calendar c = Calendar.getInstance();
					c.setTime(o.getScheduledtime());
//					int shi = date.getHours();//时
//					int fen = date.getMinutes();//分
//					int miao = date.getSeconds();//秒
					c.set(Calendar.HOUR_OF_DAY, o.getScreenings().getOvertime().getHours());//设置时
			        c.set(Calendar.MINUTE,o.getScreenings().getOvertime().getMinutes()); //设置分
			        c.set(Calendar.SECOND,o.getScreenings().getOvertime().getSeconds());//设置秒
					//c.add(Calendar.MINUTE, Integer.parseInt(o.getMovies().getMvtime()));//加电影时长如加120分钟
			        System.out.println(o.getScreenings().getOvertime().getHours()+"时");
			        System.out.println(o.getScreenings().getOvertime().getMinutes()+"分");
			        System.out.println(o.getScreenings().getOvertime().getSeconds()+"秒");
					if(date.getTime()>c.getTime().getTime()){						
						outtime.add(o);
					}else if(date.getTime()<c.getTime().getTime()){
						intime.add(o);
					}
				}
				
				ServletActionContext.getRequest().setAttribute("img", "upload/"+order.get(0).getUsers().getUserimg());
				ServletActionContext.getRequest().setAttribute("outtime", outtime);
				ServletActionContext.getRequest().setAttribute("intime", intime);
				return this.NONE;
			}
			// ajax验证用户名和密码
			public String ajxlog() throws Exception {
				ServletActionContext.getRequest().setCharacterEncoding("utf-8");
				ServletActionContext.getResponse().setCharacterEncoding("utf-8");
				ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
				boolean is = false;
				boolean ia = false;
				String img = null;
				List<Users> user = usersServletImp.usersSelect();
				PrintWriter out = ServletActionContext.getResponse().getWriter();
				String email = ServletActionContext.getRequest().getParameter("name");
				String pass = ServletActionContext.getRequest().getParameter("pass");
				
				for (Users qq : user) {
					if (qq.getUserpasswd().equals(this.makeMD5(pass))&&qq.getUseremail().equals(email)) {
						//System.out.println("qweq");
						ia = true;
					   img=qq.getUserimg();
						
						break;
					}
					} 
			
				if (ia==true) {		
					out.print(img);
					ServletActionContext.getResponse().getWriter().flush();
					ServletActionContext.getResponse().getWriter().close();
					
					
				} else if (ia==false){
					out.print("-2");
					ServletActionContext.getResponse().getWriter().flush();
					ServletActionContext.getResponse().getWriter().close();
				}
			
		     ServletActionContext.getRequest().setAttribute("img", img);
		   //  System.out.println(img+"图片地址");
				return "log";
			}
			
			// ajax验证邮箱
			public String email() throws Exception {
				boolean ia = false;
				List<Users> user = usersServletImp.usersSelect();
				PrintWriter out = ServletActionContext.getResponse().getWriter();
				String useremail = ServletActionContext.getRequest().getParameter("useremail");

				for (Users qq : user) {
					if (qq.getUseremail().equals(useremail)) {
						ia = true;					
						break;
					}
					} 		
				if (ia==true) {		
					out.print("2");
					ServletActionContext.getResponse().getWriter().flush();
					ServletActionContext.getResponse().getWriter().close();
					
					
				} else if (ia==false){
					out.print("-2");
					ServletActionContext.getResponse().getWriter().flush();
					ServletActionContext.getResponse().getWriter().close();
				}
				return "email";
			}			
			//登录跳转
			public String denglu() throws Exception {
				ServletActionContext.getRequest().setCharacterEncoding("utf-8");
				ServletActionContext.getResponse().setCharacterEncoding("utf-8");
				ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
				//List<Movies> voi = usersServletImp.voidSelect();
				//ServletActionContext.getRequest().setAttribute("voide", voi);
				String img = null;
				String na = null;
				List<Users> user = usersServletImp.usersSelect();
				PrintWriter out = ServletActionContext.getResponse().getWriter();
				String email = ServletActionContext.getRequest().getParameter("user");
				String pass = ServletActionContext.getRequest().getParameter("pwd");
	//System.out.println(pass);
				for (Users qq : user) {
					  
					if (qq.getUserpasswd().equals(this.makeMD5(pass))&&qq.getUseremail().equals(email)) {
					   img="upload/"+qq.getUserimg();	 
					   na=qq.getUsername();
					  // System.out.println(qq.getUserid());
					   ServletActionContext.getRequest().getSession().setAttribute("userid", qq.getUserid()); 
					   ServletActionContext.getRequest().getSession().setAttribute("username", qq.getUsername());
					   ServletActionContext.getRequest().getSession().setAttribute("img", img);
					}
					} 
				
				  return "denglu";
				
			}
			/**生成图表*/
			public String tu() throws Exception{
				//month(time)
				int userid = Integer.parseInt(String.valueOf(ServletActionContext.getRequest().getSession().getAttribute("userid")));
				List orders = usersServletImp.findorder(userid);
				DefaultCategoryDataset date = this.date(orders);
				ServletActionContext.getRequest().setAttribute("dcd", date);
				ServletActionContext.getRequest().setAttribute("imgname", "countScoreByCourseDpd.png");
				return this.NONE;
			}
			/**柱状图*/
			public DefaultCategoryDataset date(List<Object []> list){
				DefaultCategoryDataset date = new DefaultCategoryDataset();
				for(int i = 0;i<list.size();i++){
					double num = (double) list.get(i)[0];
					String title = String.valueOf( list.get(i)[1]);
					date.setValue(num, title+"月", title+"月");
				}
				return date;
			}
}
