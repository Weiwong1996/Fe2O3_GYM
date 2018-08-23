package controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Course;
import entity.CourseAndCoach;
import entity.Page;
import service.CourseService;

/* 
 *  course是一个基于注解的控制器, 
 *  可以同时处理多个请求动作，并且无须实现任何接口。 
 *  org.springframework.stereotype.Controller注解用于指示该类是一个控制器 
 */ 
@Controller
//相当于定义一个名为"course"的Bean
@RequestMapping("/course")
public class CourseController {
	@Resource
	private CourseService courseService;
	@RequestMapping(value = "/Pageindex", method = RequestMethod.GET)
	public String Pageindex(HttpServletRequest request, Model model) {	
				Page page = new Page();
				//设置每页的课程数
				page.setPageSize(4);
				//获得总记录数totalCounts
				int totalCounts = courseService.courseTotal();
				//计算总页数totalPages
				int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);   
				int currentPage=1;
				// 如果currentIndex有值 就重新赋值
				if (request.getParameter("currentPage") != null) {
					currentPage = Integer.valueOf(request.getParameter("currentPage"));
					if (currentPage <= 1) { // 再小不能比首页还小
						currentPage = 1;
					} else if (currentPage >= totalPages) {// 再大不能大过总页码
						currentPage = totalPages;
					}
				}
				//计算出开始页
				int pageStart = (currentPage - 1) * page.getPageSize();
				page.setStartRow(pageStart);
				List<CourseAndCoach> clist = courseService.selectCourseList(page);
				model.addAttribute("currentPage", currentPage);
				model.addAttribute("clist",clist);
				return "index";
	}
	@RequestMapping(value = "/selectAllCourse", method = RequestMethod.GET)
	public String selectAllCourse(HttpServletRequest request, Model model) {
		List<Course> clist = courseService.selectAll();
		model.addAttribute("clist",clist);
		return "index";
		
	}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String showCource(HttpServletRequest request, Model model, HttpServletResponse response) {
		List<Course> clist =courseService.selectAll();
		model.addAttribute("clist", clist);
		return "course";
	}
	
	
	@RequestMapping(value = "/allCourse", method = RequestMethod.GET)
	@ResponseBody
	public List<Course> getAllCust() {
		List<Course> clist = this.courseService.selectAll();
		return clist;
	}
	
	@RequestMapping(value = "/addCourse", method = RequestMethod.POST)
	public String courseAdd(Course course, Map<String, Object> model) {
		boolean flag = this.courseService.insertSelective(course);
		if (flag) {
			List<Course> clist = this.courseService.selectAll();
			model.put("clist", clist);
			return "adminCourse_manage";
		}
		return "adminCourse_manage";
	}
	
	@RequestMapping(value = "/delCourse", method = RequestMethod.GET)
	public void delCourse(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		int couid = Integer.valueOf(request.getParameter("couid"));
		boolean flag = this.courseService.deleteByPrimaryKey(couid);		
		if(flag) {
			List<Course> clist = this.courseService.selectAll();
			request.getSession().setAttribute("clist", clist);
			response.getWriter().print("<script>alert('删除成功!!!');location='../adminCourse_manage.jsp';</script>");
		}else {
			List<Course> clist = this.courseService.selectAll();
			request.getSession().setAttribute("clist", clist);
			response.getWriter().print("<script>alert('删除成功!!!');location='../adminCourse_manage.jsp';</script>");
		}		
	}
	
}
