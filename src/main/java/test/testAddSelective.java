package test;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.CoachMapper;
import dao.CustomizationMapper;
import entity.Coach;
import entity.Customization;
import service.CoachService;
import service.CustomizationService;

public class testAddSelective {
	@Resource
	private CustomizationService customizationService = null;
	
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:spring/root-context.xml");
		dao.CustomizationMapper cm = (CustomizationMapper) ctx.getBean("customizationDao");
		System.out.println(cm.getClass());
		Customization c = new Customization();
		 List<Customization> clist=cm.selectByUid(3);
		 for(Customization cu:clist) {
		    System.out.println(cu);
		 }
	}
}
