package convert;

import java.lang.reflect.Field;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

public class DateCovert<T> extends StrutsTypeConverter {

	// 从页面提交的主键集合转为到对象集合
	@Override
	public Object convertFromString(Map context, String[] ids, Class target) {
		Field[] fd = target.getDeclaredFields();
		Object obj = null;
		for (Field zd : fd) {
			SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
			try {
				return sdf.parse(ids[0]);
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			zd.setAccessible(true);// 修改为可设置值
			try {
				obj = target.newInstance();
				zd.set(obj, ids);// 将页面传递过来的值（同名值就为数组）
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // 根据目标对象的类型初始化出一个对象

		}
		return obj;// 这个已经初始化并且赋了主键值的对象，将返回给调用的action用于属性注入，
		// 因为在注册时候student.clazz=转换器，所以注册器返回的obj给了
		// studentAction.student.clazz的值注入
	}

	// 从数据库查出的对象集合转换为页面标签需要的主键字符串集合
	@Override
	public String convertToString(Map context, Object target) {
		return "";
	}

}
