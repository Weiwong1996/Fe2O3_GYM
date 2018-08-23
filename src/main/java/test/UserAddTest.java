package test;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.UsersMapper;
import entity.Users;
import service.UsersService;

public class UserAddTest {
	@Resource
	private UsersService usersService = null;
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:spring/root-context.xml");
		dao.UsersMapper cm = (UsersMapper) ctx.getBean("usersDao");
		System.out.println(cm.getClass());
		Users u=cm.getUidByUname("jack");
		System.out.println(u.getUid());
	}

}
