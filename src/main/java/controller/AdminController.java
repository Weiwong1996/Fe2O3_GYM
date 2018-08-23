package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Coach;
import entity.Course;
import entity.Users;
import service.CoachService;
import service.CourseService;
import service.UsersService;
/* 
 *  adminCtrl是一个基于注解的控制器, 
 *  可以同时处理多个请求动作，并且无须实现任何接口。 
 *  org.springframework.stereotype.Controller注解用于指示该类是一个控制器 
 */  
@Controller
//相当于定义一个名为"adminCtrl"的Bean
@RequestMapping("/adminCtrl")
public class AdminController {
	//注入usersServiceService
	@Resource
	private UsersService usersService;
	//注入coachService
	@Resource
	private CoachService coachService;
	//注入courseService
	@Resource
	private CourseService courseService;
	//管理员首页
	//properties 名为admin
	@RequestMapping(value = "/admin")
	public String admin(HttpServletRequest request, Model model) {
		return "adminManage";
	}
	//修改用户
	@RequestMapping(value = "/editUser")
	public void editUser(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		//将从jsp得到的id转为integer 
		int uid = Integer.valueOf(request.getParameter("uid"));
		String uname = request.getParameter("uname");
		int uage = Integer.valueOf(request.getParameter("uage"));
		int uheight = Integer.valueOf(request.getParameter("uheight"));
		int uweight = Integer.valueOf(request.getParameter("uweight"));
		String utimelit = request.getParameter("utimelit");
		//创建一个新的user
		Users user = new Users(uid,uname, uage, uheight, uweight, utimelit);
		//根据id进行修改
		boolean flag = usersService.updateByPrimaryKeySelective(user);
		//判断是否修改成功，进行相应的操作
		if(flag) {
			List<Users> ulist = usersService.selectAllUsers();
			request.getSession().setAttribute("ulist", ulist);
			response.getWriter().print("<script>alert('修改成功!!!');location='../adminManage.jsp';</script>");
		}else {
			response.getWriter().print("<script>alert('修改失败!!!');location='../adminManage.jsp';</script>");
		}	
	}
	//该操作同上
	@RequestMapping(value = "/editUser1")
	public void editUser1(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		int uid = Integer.valueOf(request.getParameter("uid"));
		String uname = request.getParameter("uname");
		int uage = Integer.valueOf(request.getParameter("uage"));
		int uheight = Integer.valueOf(request.getParameter("uheight"));
		int uweight = Integer.valueOf(request.getParameter("uweight"));
		String utimelit = request.getParameter("utimelit");
		Users user = new Users(uid,uname, uage, uheight, uweight, utimelit);
		boolean flag = usersService.updateByPrimaryKeySelective(user);
		if(flag) {
			List<Users> ulist = usersService.selectAllUsers();
			request.getSession().setAttribute("ulist", ulist);
			response.getWriter().print("<script>alert('修改成功!!!');location='../adminUser.jsp';</script>");
		}else {
			response.getWriter().print("<script>alert('修改失败!!!');location='../adminUser.jsp';</script>");
		}	
	}
	//根据id查询用户
	@RequestMapping(value = "/selectUsers",method = RequestMethod.GET)
	public String selectbyid(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		
		if(request.getParameter("userid")!="") {
			//获取jsp传递过来的id
			int uid = Integer.valueOf(request.getParameter("userid"));
			//根据id做查询
			Users u = usersService.selectByPrimaryKey(uid);
			List<Users> ulist = new ArrayList<>();
			ulist.add(u);
			model.addAttribute("ulist",ulist);
			return "adminManage";
		}else {
			List<Users> ulist = usersService.selectAllUsers();
			model.addAttribute("ulist", ulist);
			return "adminManage";
		}
			
	}
	
	
	@RequestMapping(value = "/selectUsers1",method = RequestMethod.GET)
	public String selectbyid1(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		
		if(request.getParameter("userid")!="") {
			int uid = Integer.valueOf(request.getParameter("userid"));
			Users u = usersService.selectByPrimaryKey(uid);
			List<Users> ulist = new ArrayList<>();
			ulist.add(u);
			model.addAttribute("ulist",ulist);
			return "adminUser";
		}else {
			List<Users> ulist = usersService.selectAllUsers();
			model.addAttribute("ulist", ulist);
			return "adminUser";
		}
			
	}
	//用戶
	@RequestMapping(value = "/userManage",method = RequestMethod.GET)
	public String userMge(HttpServletRequest request, Model model) {
		//查询所有的用户 将返回值传递给jsp
		List<Users> ulist = usersService.selectAllUsers();
		model.addAttribute("ulist", ulist);
		//跳转到管理员首页
		return "adminUser";
	}
	//删除用户
	@RequestMapping(value = "/deleteUsers",method = RequestMethod.GET)
	public void delUsers(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		//根据id做查询
		int uid = Integer.valueOf(request.getParameter("uid"));
		boolean flag = usersService.deleteByPrimaryKey(uid);
		//判断是否查询成功
		if(flag) {
			List<Users> ulist = usersService.selectAllUsers();
			request.getSession().setAttribute("ulist", ulist);
			response.getWriter().print("<script>alert('删除成功!!!');location='../adminManage.jsp';</script>");
		}else {
			response.getWriter().print("<script>alert('删除失败!!!');location='../adminManage.jsp';</script>");
		}	
	}
	/*
	 * 删除操作
	 */
	@RequestMapping(value = "/deleteUsers1",method = RequestMethod.GET)
	public void delUsers1(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		int uid = Integer.valueOf(request.getParameter("uid"));
		boolean flag = usersService.deleteByPrimaryKey(uid);
		if(flag) {
			List<Users> ulist = usersService.selectAllUsers();
			request.getSession().setAttribute("ulist", ulist);
			response.getWriter().print("<script>alert('删除成功!!!');location='../adminUser.jsp';</script>");
		}else {
			response.getWriter().print("<script>alert('删除失败!!!');location='../adminUser.jsp';</script>");
		}	
	}
	// json格式
			@RequestMapping(value = "/testRequestBody")
			// @ResponseBody会将集合数据转换json格式返回客户端
			@ResponseBody
			public Object getJson(@RequestBody Users user) {
				// 使用@RequestBody注解获取到json数据后，将json数据设置到对应的Teacher对象的属性中
//				System.out.println(user);
				Users users = this.usersService.selectByPrimaryKey(user.getUid());
				return users;
			}

	//教練
	@RequestMapping(value = "/coachManage",method = RequestMethod.GET)
	public String coachManage(HttpServletRequest request, Model model) {
		List<Coach> clist = coachService.selectAllCoach();
		model.addAttribute("clist", clist);
		return "adminCoach_manage";
	}
	
	
	@RequestMapping(value = "/editCoach")
	public void editCoach(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		int cid = Integer.valueOf(request.getParameter("cid"));
		String cname = request.getParameter("cname");
		String ccourse = request.getParameter("ccourse");
		String cworkyear = request.getParameter("cworkyear");
		int cprice = Integer.valueOf(request.getParameter("cprice"));
		String clevel = request.getParameter("clevel");
		Coach coach = new Coach(cid, cname, ccourse, cworkyear, clevel, cprice);
		int flag = coachService.updateByPrimaryKeySelective(coach);
		if(flag>0) {
			List<Coach> clist = coachService.selectAllCoach();
			request.getSession().setAttribute("clist", clist);
			response.getWriter().print("<script>alert('修改成功!!!');location='../adminCoach_manage.jsp';</script>");
		}else {
			response.getWriter().print("<script>alert('修改失败!!!');location='../adminCoach_manage.jsp';</script>");
		}	
	}
	//添加教練
	@RequestMapping(value = "/coachAdd")
	public String coachAdd(HttpServletRequest request, Model model) {
		return "adminCoach_add";
	}

	//定制
	@RequestMapping(value = "/custManage")
	public String custMge(HttpServletRequest request, Model model) {
		return "adminCust_manage";

	}

	//课程
	@RequestMapping(value = "/courseManage",method = RequestMethod.GET)
	public String courseMge(HttpServletRequest request, Model model) {
		List<Course> clist = courseService.selectAll();
		for(Course c:clist) {
			System.out.println(c);
		}
		model.addAttribute("clist", clist);
		return "adminCourse_manage";
	}
	
	// json格式
				@RequestMapping(value = "/testRequestBody1")
				// @ResponseBody会将集合数据转换json格式返回客户端
				@ResponseBody
				public Object getJson1(@RequestBody Coach coach) {
					// 使用@RequestBody注解获取到json数据后，将json数据设置到对应的Teacher对象的属性中	
//					System.out.println(coach);
					Coach c = this.coachService.selectByPrimaryKey(coach.getCid());				
					return c;
				}
	//添加课程
	@RequestMapping(value = "/courseAdd")
	public String courseAdd(HttpServletRequest request, Model model) {
		return "adminCourse_add";
	}
	
	// json格式
	@RequestMapping(value = "/testRequestBody2")
	// @ResponseBody会将集合数据转换json格式返回客户端
	@ResponseBody
	public Object getJson2(@RequestBody Course course) {
		// 使用@RequestBody注解获取到json数据后，将json数据设置到对应的Teacher对象的属性中	
//		System.out.println(coach);
		Course c= this.courseService.selectByPrimaryKey(course.getCouid());		
		return c;
	}
	/*
	 * 如下为跳转界面
	 */
	//活动
	@RequestMapping(value = "/actManage")
	public String actMge(HttpServletRequest request, Model model) {
		return "adminAct_manage";
	}
	//添加活动
	@RequestMapping(value = "/actAdd")
	public String actAdd(HttpServletRequest request, Model model) {
		return "adminAct_add";
	}

	//新闻
	@RequestMapping(value = "/newsManage")
	public String newsMge(HttpServletRequest request, Model model) {
		return "adminNews_manage";
	}
	//添加新闻
	@RequestMapping(value = "/newsAdd")
	public String newsAdd(HttpServletRequest request, Model model) {
		return "adminNews_add";
	}
	
	//编辑课程
	@RequestMapping(value = "/editCourse")
	public void editCourse(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		//从jsp界面获取相应值
		int couid = Integer.valueOf(request.getParameter("couid"));
		String couname = request.getParameter("couname");
		String couintroduce = request.getParameter("couintroduce");
		String coutime = request.getParameter("coutime");
		int cid = Integer.valueOf(request.getParameter("cid"));
		String coudaytime = request.getParameter("coudaytime");
		//new一个新的课程
		Course course = new Course(couid, couname, cid, couintroduce, coutime, coudaytime);
		boolean flag = courseService.updateByPrimaryKey(course);
		//判断是否成功
		if(flag) {
			List<Course> clist = courseService.selectAll();
			request.getSession().setAttribute("clist", clist);
			response.getWriter().print("<script>alert('修改成功!!!');location='../adminCourse_manage.jsp';</script>");
		}else {
			response.getWriter().print("<script>alert('修改失败!!!');location='../adminCourse_manage.jsp';</script>");
		}	
	}
}
