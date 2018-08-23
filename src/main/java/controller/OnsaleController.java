package controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Salespromotion;
import service.SalespromotionService;


/* 
 *  onsaleCtrl是一个基于注解的控制器, 
 *  可以同时处理多个请求动作，并且无须实现任何接口。 
 *  org.springframework.stereotype.Controller注解用于指示该类是一个控制器 
 */ 
@Controller
//相当于定义一个名为"onsaleCtrl"的Bean
@RequestMapping("/onsaleCtrl")
public class OnsaleController {

	@Resource
	private SalespromotionService salespromotionService;
	@RequestMapping(value = "/allPro", method = RequestMethod.GET)
	@ResponseBody
	public List<Salespromotion> getAllPro() {
		List<Salespromotion> slist = this.salespromotionService.selectAllSale();
		return slist;
	}

	@RequestMapping(value = "onsaleAdd", method = RequestMethod.POST)
	public String SalesAdd(Salespromotion s, Map<String, Object> model) {
		int flag = this.salespromotionService.insert(s);
		if (flag > 0) {
			// List<Coach> tlist = this.coachService.selectAllCoach();
			// model.put("tlist", tlist);
			return "adminAct_manage";
		}
		return "adminAct_manage";
	}

	@RequestMapping(value = "/delPro", method = RequestMethod.GET)
	public String delPro(HttpServletRequest request) {
		//从adminAct_manage.jsp获取教练编号cid
		int pid = Integer.valueOf(request.getParameter("cid"));
		System.out.println(pid);
		int flag = this.salespromotionService.deleteByPrimaryKey(pid);
		//flag>0 删除成功   flag<0   删除失败
		System.out.println(flag);
		if (flag > 0) {
			//返回adminAct_manage.jsp 传入活动值
			return "adminAct_manage";
		} else {
			return "adminAct_manage";
		}
	}
}
