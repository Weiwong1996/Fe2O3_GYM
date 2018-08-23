package test;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.CustomizationMapper;
import entity.Customization;
import service.CustomizationService;

public class testAdd {
	@Resource
	private CustomizationService customizationService = null;
	
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:spring/root-context.xml");
		dao.CustomizationMapper cm = (CustomizationMapper) ctx.getBean("customizationDao");
		System.out.println(cm.getClass());
		List<Customization> clist=cm.selectByUid(3);
		 for(Customization c:clist) {
			    System.out.println(c);
			 }
	}
}
