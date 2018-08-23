package test;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.UsersMapper;
import entity.Users;
import service.UsersService;

public class DoLogin {

	
		@Resource
		private UsersService usersService = null;
		
		public static void main(String[] args) {
			ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:spring/root-context.xml");
			dao.UsersMapper cm = (UsersMapper) ctx.getBean("usersDao");
			System.out.println(cm.getClass());
			Users u = new Users("admin", "admin");
			int flag = cm.doLogin(u);
			System.out.println("------------------------");
			System.err.println(flag);
//			if(flag>0) {
//				System.out.println("登录成功");
//			}else {
//				System.out.println("登录失败");
//			}
		}
	

}
