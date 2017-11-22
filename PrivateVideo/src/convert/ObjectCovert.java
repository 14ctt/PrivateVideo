package convert;

import java.lang.reflect.Field;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;


public class ObjectCovert<T> extends StrutsTypeConverter {

	// 从页面提交的主键集合转为到对象集合
	@Override
	public Object convertFromString(Map context, String[] ids, Class target) {
		Field fd = target.getDeclaredFields()[0];//获得待转换对象的主属性（对应数据库主键）
		fd.setAccessible(true);//修改为可设置值
		Object obj = null;
		System.out.println(fd);
		try {
			obj = target.newInstance();//根据目标对象的类型初始化出一个对象
			                           //如将 cno赋值给Clazz班级对象的主键，通过目标类型获得对象

	        fd.set(obj, ids[0]);//将页面传递过来的值（同名值就为数组）
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(obj);
        return obj;//这个已经初始化并且赋了主键值的对象，将返回给调用的action用于属性注入，
        //因为在注册时候student.clazz=转换器，所以注册器返回的obj给了
       //studentAction.student.clazz的值注入
	}

	// 从数据库查出的对象集合转换为页面标签需要的主键字符串集合
	@Override
	public String convertToString(Map context, Object target) {
		return "";
	}

}
