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

import entity.Coach;
import service.CoachService;
/* 
 *  coachCtrl是一个基于注解的控制器, 
 *  可以同时处理多个请求动作，并且无须实现任何接口。 
 *  org.springframework.stereotype.Controller注解用于指示该类是一个控制器 
 */  
@Controller
//相当于定义一个名为"coachCtrl"的Bean
@RequestMapping("/coachCtrl")
public class CoachController {
	
	//注入coachService
	@Resource
	private CoachService coachService;
	
	//遍历出所有coach
	@RequestMapping(value = "/allCoach", method = RequestMethod.GET)
	@ResponseBody
	public List<Coach> getAllCoach() {
		List<Coach> clist = this.coachService.selectAllCoach();
		return clist;
	}
	
	//根据id做查询
	@RequestMapping(value = "/findCoach", method = RequestMethod.GET)
	@ResponseBody
	public Coach findCoachById(HttpServletRequest request) {
		//从jsp获取id
		int cid = Integer.valueOf(request.getParameter("coach_id"));
		System.out.println(cid);
		Coach c = this.coachService.selectByPrimaryKey(cid);
		return c;
	}

	//根据id做删除操作
	@RequestMapping(value = "/delCoach", method = RequestMethod.GET)
	public void delCoach(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		//获取id
		int cid = Integer.valueOf(request.getParameter("cid"));
		//判断能否进行删除
		if(cid<9) {
			List<Coach> clist = coachService.selectAllCoach();
			request.getSession().setAttribute("clist", clist);
			//若教练还有课程尚未结束，则不能进行删除操作
			response.getWriter().print("<script>alert('此教练还有课程，无法删除!!!');location='../adminCoach_manage.jsp';</script>");
		}else{
			coachService.deleteByPrimaryKey(cid);
			List<Coach> clist = coachService.selectAllCoach();
			request.getSession().setAttribute("clist", clist);
			response.getWriter().print("<script>alert('删除成功!!!');location='../adminCoach_manage.jsp';</script>");
		}
	}
	
	//添加一个
	@RequestMapping(value = "/coachAdd", method = RequestMethod.POST)
	// @PostMapping("addPage")
		public String coachAdd(Coach co, Map<String, Object> model) {
			int flag = this.coachService.insert(co);
			//判断是否添加成功
			if (flag>0) {
				List<Coach> clist = this.coachService.selectAllCoach();
				model.put("clist", clist);
				//返回界面
				return "adminCoach_manage";
			}
			return "adminCoach_manage";
		}
}
