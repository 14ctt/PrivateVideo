package dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import entity.Orders;
import page.PageInfo;

public class Test {
public static void main(String[] args) throws Exception {
//	Session session = HibernateSessionFactory.getSession();
//	Query query = session.createQuery("From Student");
//	List<Student> students = query.list();
	//ApplicationContext ctx = new FileSystemXmlApplicationContext("src/applicationContext.xml");
	
	//1
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
	//2
	Date now = new Date(); 
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
	String hehe = dateFormat.format( now ); 
	System.out.println(hehe); 
	//3
	Calendar c = Calendar.getInstance();//可以对每个时间域单独修改
	int year = c.get(Calendar.YEAR); 
	int month = c.get(Calendar.MONTH); 
	int date = c.get(Calendar.DATE); 
	int hour = c.get(Calendar.HOUR_OF_DAY); 
	int minute = c.get(Calendar.MINUTE); 
	int second = c.get(Calendar.SECOND); 
	System.out.println(year + "/" + month + "/" + date + " " +hour + ":" +minute + ":" + second); 
}
}
