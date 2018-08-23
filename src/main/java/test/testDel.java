package test;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.CoachMapper;
import service.CoachService;

public class testDel {
	@Resource
	private CoachService coachService = null;
	
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:spring/root-context.xml");
		dao.CoachMapper cm = (CoachMapper) ctx.getBean("coachDao");
		System.out.println(cm.getClass());
		int a = cm.deleteByPrimaryKey(1);
		System.out.println(a);
	}
}
