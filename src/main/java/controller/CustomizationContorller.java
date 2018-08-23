package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Coach;
import entity.Customization;
import service.CoachService;
import service.CustomizationService;


/* 
 *  customization是一个基于注解的控制器, 
 *  可以同时处理多个请求动作，并且无须实现任何接口。 
 *  org.springframework.stereotype.Controller注解用于指示该类是一个控制器 
 */ 
@Controller
//相当于定义一个名为"customization"的Bean
@RequestMapping("/customization")
public class CustomizationContorller {
	@Resource
	private CustomizationService customizationService;
	@Resource
	private CoachService coachService;

	@RequestMapping(value = "/show1", method = RequestMethod.GET)
	public String showCustomization(HttpServletRequest request, Model model, HttpServletResponse response) {
		int uid = Integer.parseInt(request.getParameter("uid"));
		List<Coach> clist = coachService.selectAllCoach();
		model.addAttribute("clist", clist);
		model.addAttribute("uid", uid);
		return "customization";
	}

	// customization/getPrice?cname=""
	@GetMapping("/getPrice")
	@ResponseBody
	public Coach getPriceByName(@RequestParam(name = "cname") String name, HttpServletResponse response,
			HttpServletRequest request) {
		// 获取数据字符串格式设置
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Coach c = coachService.getPriceByName(name);
		return c;

	}

	@GetMapping("/gettPrice")
	@ResponseBody
	public int getTprice(@RequestParam(name = "tcount") int count, @RequestParam(name = "cprice") int price,
			HttpServletResponse response, HttpServletRequest request) {
		// 获取数据字符串格式设置
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int total = count * price;
		return total;

	}

	@RequestMapping(value = "/addCustomization", method = RequestMethod.POST)
	public String addCustomization(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");

		int uid = Integer.parseInt(request.getParameter("uid"));
		String cname = request.getParameter("coach");
		int tprice = Integer.parseInt(request.getParameter("tprice"));
		String custontent = request.getParameter("custontent");
		Coach c = coachService.getPriceByName(cname);
		int cid = c.getCid();
		System.out.println(c);
		/*
		 * System.out.println("+++++"+uid+"+++++++"+cname+"++++"+tprice+"++++++"+cid+
		 * "+++++++++++");
		 */

		Customization cus = new Customization(custontent, uid, cid, tprice);
		boolean flag = customizationService.insert(cus);
		if (flag) {
			try {
				response.getWriter().print("<script>alert('添加定制成功!');</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "forward:myCustomization";
		} else {
			try {
				response.getWriter().print("<script>alert('添加定制失败!');</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "a";
	}

	@RequestMapping(value = "/myCustomization")
	public String myCustomization(HttpServletRequest request, Model model, HttpServletResponse response) {
		int uid = Integer.parseInt(request.getParameter("uid"));
		List<Customization> clist = customizationService.selectByUid(uid);
		model.addAttribute("clist", clist);
		model.addAttribute("uid", uid);
		return "myCustomization";
	}

	@RequestMapping(value = "/allCust", method = RequestMethod.GET)
	@ResponseBody
	public List<Customization> getAllCust() {
		List<Customization> clist = this.customizationService.selectAllCus();
		return clist;
	}
	
	
	@RequestMapping(value = "/delCustomization", method = RequestMethod.GET)
	public String delCoach(HttpServletRequest request) {
		int cusid = Integer.valueOf(request.getParameter("cusid"));
		boolean flag = this.customizationService.deleteByPrimaryKey(cusid);		
		if(flag) {
			return "adminCust_manage";
		}else {
			return "adminCust_manage";
		}		
	}
	
	@RequestMapping(value = "/findCust", method = RequestMethod.GET)
	@ResponseBody
	public List<Customization> findCustByuserId(HttpServletRequest request) {

		int uid = Integer.valueOf(request.getParameter("userid"));
		System.out.println(uid);
		List<Customization> clist = this.customizationService.selectByUid(uid);
		return clist;
	}

}
