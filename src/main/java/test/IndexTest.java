package test;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.CoachMapper;
import dao.CourseMapper;
import entity.Coach;
import entity.Course;
import entity.Page;
import service.CoachService;
import service.CourseService;


public class IndexTest {
	@Resource
	private CourseService courseService = null;
	private CoachService coachService = null;
	
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:spring/root-context.xml");
		dao.CoachMapper cm = (CoachMapper) ctx.getBean("coachDao");
		System.out.println(cm.getClass());
		List<Coach> clist = cm.selectAllCoach();
		for(Coach c:clist) {
			System.out.println(c);
		}
}
	}
