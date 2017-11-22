package convert;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.util.StrutsTypeConverter;

import entity.Screenings;

/**
 * 
 * 
 * @author Administrator Action转换版本
 * @param <T>
 */

public class ListCovert<T> extends StrutsTypeConverter {

	// 从页面提交的主键集合转为到对象集合
	@Override
	public Object convertFromString(Map context, String[] ids, Class target) {
		List lists = new ArrayList();
		Class clazz = getTargetClass(context);// 通过容器获得目标对象的类型
		Field fd = clazz.getDeclaredFields()[0];// 获得目标对象的主键值
		for (String id : ids) {// 页面返回了多个主键的数组，进行遍历

			fd.setAccessible(true);
			Object obj = null;
			try {
				obj = clazz.newInstance();

				fd.set(obj, id);
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			lists.add(obj);// 得到目标对象的集合
		}
		System.out.println(lists.size());
		return lists;// 这个集合返回给，注册器对应属性，student.courses
	}

	// 从数据库查出的对象集合转换为页面标签需要的主键字符串集合
	@Override
	public String convertToString(Map context, Object target) {
		// TODO Auto-generated method stub
		String listids = "{";

		String name = target.getClass().getName();// 获得集合对象的
		Class clazz = getTargetClass(context); // 获得集合对象的泛型类型
		List list = (List) target;// 遍历集合，取出集合中的每一个对象的第一个字段的值

		for (int i = 0; i < list.size(); i++) {
			Object obj = list.get(i);
			Field fd = obj.getClass().getDeclaredFields()[0];
			fd.setAccessible(true);
			String val = "";
			try {
				val = String.valueOf(fd.get(obj));
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// System.out.println(val);
			if (i == list.size() - 1) {
				listids += "'" + val + "'";
			} else {
				listids += "'" + val + "',";
			}
		}
		listids += "}";
		// System.out.println(listids);
		ServletActionContext.getRequest().setAttribute("listids", listids);
		return listids;
	}

	// public Class getTargetClass(Map context) {
	// //propname获得了 注册器对应的属性的完整名称 student.courses
	// String propname =
	// String.valueOf(context.get("conversion.property.fullName"));
	// //realname为Course,通过取.位置获得courses，首字母大写后，去到最后一位Couse
	// String realpropname = upperCase(propname.substring(propname.indexOf(".")
	// + 1, propname.length() - 1));
	// Class clazz = null;
	// try {
	// //拼接好完整包名后 得到完整类名 反射为类型
	// clazz = Class.forName("entity.Course");
	// } catch (ClassNotFoundException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// return clazz;
	// }
	public Class getTargetClass(Map context) {
		// 1.如果是studentAction 该处获得对象名student
		String propname = String.valueOf(context.get("current.property.path"));
		System.out.println(propname + "-------propname--------");
		// 取struts容器传递过来的map中的属性，得到将要转换的类和相应属性的信息
		// 2.如果是studentAction 该处获得完整类名class controller.StudentAction
		String tempActionname = String.valueOf(context.get("last.bean.accessed"));
		String actionName = tempActionname.substring(tempActionname.indexOf(" ") + 1);
		// tempActionname获取到可以用于反射类名 controller.StudentAction 和上一个比少class
		System.out.println(tempActionname + "-------tempActionname--------");
		System.out.println(actionName + "-------actionName--------");
		// 3.如果是studentAction 该处获得对象名student.courses
		String tempfieldname = String.valueOf(context.get("conversion.property.fullName"));
		// 4.该处获得对象名 fieldname为courses
		String fieldname = tempfieldname.substring((tempfieldname.indexOf(".") + 1));
		System.out.println(tempfieldname + "-------tempfieldname--------");
		System.out.println(fieldname + "-------fieldname--------");
		String realType = "";
		Class actioncls = null;
		try {// 得到action对象studentAction
			actioncls = Class.forName(actionName);
			// 得到student对象
			Field fd = actioncls.getDeclaredField(propname);
			// 从action对象中获取转换的字段如studentAction中student属性
			// 获得student类型fd.getType();获得courses getDeclaredField
			// realType得到private List<Course> 字段对象
			Field realsType = fd.getType().getDeclaredField(fieldname);
			System.out.println(realsType + "----realsType-----");
			// 获取泛型中的类型，mapMainType得到List<Course>和上一句比少private
			Type mapMainType = realsType.getGenericType();
			// 为了确保安全转换，使用instanceof
			System.out.println(mapMainType + "----mapMainType-----");
			// 此处if尝试判断类型是否为泛型，instanceof 返回值为布尔，所以不会产生异常
			if (mapMainType instanceof ParameterizedType) {
				// 执行强制类型转换，如果本身就是泛型不会转换
				ParameterizedType parameterizedType = (ParameterizedType) mapMainType;
				// 获取基本类型信息，即List接口
				Type basicType = parameterizedType.getRawType();
				System.out.println("基本类型为：" + basicType);
				// 获取泛型类型的泛型参数，具体的类型entity.Course，TypeArguments类型参数
				// 因为取出是集合中所有对象的具体的类型所以是一个数组
				Type[] types = parameterizedType.getActualTypeArguments();
				// for (int i = 0; i < types.length; i++) {
				// ((Type)types[0]).getClass()
				String temprealType = types[0].toString();
				realType = temprealType.substring(temprealType.indexOf(" ") + 1);
				System.out.println(realType);

				// }
			} else {
				System.out.println("获取泛型类型出错!");
			}
			// 如果是studentAction，该语句拿到student属性
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Class cls = null;
		try {

			cls = Class.forName(realType);
			System.out.println(cls.getName());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cls;
	}

	public void testgetTargetClass(TestPraent praent) throws Exception {
		Field realsType = praent.getClass().getDeclaredField("objs");
		System.out.println(realsType);
		Type mapMainType = realsType.getGenericType();
		System.out.println(mapMainType);
		if (mapMainType instanceof ParameterizedType) {
			ParameterizedType parameterizedType = (ParameterizedType) mapMainType;
			Type basicType = parameterizedType.getRawType();
			System.out.println(basicType);
			Type[] types = parameterizedType.getActualTypeArguments();
			for (int i = 0; i < types.length; i++) {
				String temprealType = types[i].toString();
				String realType = temprealType.substring(temprealType.indexOf(" ") + 1);
				System.out.println(realType);
			}
			
		} else {
			System.out.println("获取泛型类型出错!");
		}
	}

	public String upperCase(String str) {
		return str.substring(0, 1).toUpperCase() + str.substring(1);
	}

	public static void main(String[] args) {
		try {
			new ListCovert<>().init();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void init() throws Exception {
		List objs = new ArrayList();
		Screenings screening = new Screenings();
		objs.add(screening);
		TestPraent praent = new TestPraent();
		praent.setObjs(objs);
		testgetTargetClass(praent);
	}

	class TestPraent {
		List<Object> objs;

		public List<Object> getObjs() {
			return objs;
		}

		public void setObjs(List<Object> objs) {
			this.objs = objs;
		}

	}
}
