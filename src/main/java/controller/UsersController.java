package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import entity.Users;
import service.UsersService;


/* 
 *  users是一个基于注解的控制器, 
 *  可以同时处理多个请求动作，并且无须实现任何接口。 
 *  org.springframework.stereotype.Controller注解用于指示该类是一个控制器 
 */ 
@Controller
@RequestMapping("/users")
public class UsersController {
	@Resource //注入UsersService
	private UsersService usersService;
    //登陆方法
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void doLogin(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		//获得登陆用户名和密码
		Users u = new Users(username, pwd);
		//判断数据库里是否有该用户
		boolean flag = usersService.doLogin(u);
		// 通过用户名获取登陆用户的信息
		Users users = usersService.getUidByUname(username);

		int height = users.getUheight();
		int weight = users.getUweight();

		DecimalFormat df = new DecimalFormat("0.00"); // 设置double类型小数点后位数格式
		double h = (double) height / 100;
		double h2 = h * h;
		double bmi = weight / h2;
		String Bmi = df.format(bmi);
		request.getSession().setAttribute("Bmi", Bmi);

		request.getSession().setAttribute("users", users);
		// model.addAttribute("users", users);
		if (flag) {//如果存在
			if (username.equals("admin")) {//若用户为管理员
				try {
					List<Users> ulist = usersService.selectAllUsers();
					request.getSession().setAttribute("ulist", ulist);
					response.getWriter().print("<script>alert('欢迎管理员!');location='../adminManage.jsp';</script>");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {//用户为会员
				try {
					response.getWriter().print("<script>alert('欢迎会员!');location='../UserIndex.jsp';</script>");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} else {//用户名不存在
			try {
				response.getWriter().print("<script>alert('用户名不存在或密码错误!');location='../index.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
     //注册方法
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public void doRegister(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username");
		String upwd = request.getParameter("password");
		int uage = Integer.parseInt(request.getParameter("age"));
		int uheight = Integer.parseInt(request.getParameter("height"));
		int uweight = Integer.parseInt(request.getParameter("weight"));
		
		// 获取当前系统时间并加上一年时间表示到期时间
		Calendar curr = Calendar.getInstance();
		curr.set(Calendar.YEAR, curr.get(Calendar.YEAR) + 1);//当前年份+1年
		Date date = curr.getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//设置时间输出格式
		String dateNowStr = sdf.format(date);//转换时间格式
		//作为测试，输出身高和体重
        System.out.println(uheight+uweight);
		Users u = new Users(username, upwd, uage,uheight,uweight,dateNowStr);
		int flag = usersService.insert(u);
		System.out.println(flag);
		try {
			response.getWriter().print("<script>alert('注册成功!');location='../home.jsp';</script>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    //更改身高体重的方法
	@RequestMapping(value = "/wheight", method = RequestMethod.POST)
	public String doUpdateWHeight(HttpServletRequest request, Model model, HttpServletResponse response) {
		int uid = Integer.parseInt(request.getParameter("uid"));
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		DecimalFormat df = new DecimalFormat("0.00"); // 设置double类型小数点后位数格式
		double h = (double) height / 100;
		double h2 = h * h;
		double bmi = weight / h2;
		String Bmi = df.format(bmi);
		Users u = new Users(uid, height, weight);
		usersService.updateByPrimaryKeySelective(u);
		Users users = usersService.selectByPrimaryKey(uid);
		model.addAttribute("users", users);
		model.addAttribute("Bmi", Bmi);
		return "UserIndex";
	}
    //上传会员头像的功能
	@RequestMapping(value = "/upload")
	public String upload(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request, Model model)
			throws Exception {
		int uid = Integer.valueOf(request.getParameter("uid"));
		Users users = usersService.selectByPrimaryKey(uid);
		// 保存数据库的路径
		String sqlPath = null;
		// 定义文件保存的本地路径
		String localPath = "E:\\JavaDev\\eclipase-workspace\\Fe2o3_GYM\\src\\main\\webapp\\img";
	
		// 定义 文件名E:\
		String filename = null;
		/*
		 * // 生成uuid作为文件名称 String uuid = UUID.randomUUID().toString().replaceAll("-",
		 * "");
		 */
		// 得到 文件名
		filename = file.getOriginalFilename();
		System.out.println("file.getOriginalFilename()" + file.getOriginalFilename());
		System.out.println("filename" + filename);
		// 文件保存路径

		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";

		// E:/JavaDev/KJSJsystem/src/main/webapp/WEB-INF/img/
		// 文件存放路径
		OutputStream os = new FileOutputStream(
				"E:\\JavaDev\\eclipase-workspace\\Fe2o3_GYM\\src\\main\\webapp\\img" + filename);

		InputStream is = file.getInputStream();
		int temp;
		// 一个一个字节的读取并写入
		while ((temp = is.read()) != (-1)) {
			os.write(temp);
		}
		os.flush();
		os.close();
		is.close();
		String a = "img/";
		//拼接字符串，保存路径
		String picpath = a.concat(filename);
		users.setUpicpath(picpath);
		usersService.updateByPrimaryKeySelective(users);
		model.addAttribute("users", users);
		return "UserIndex";

	}
	//返回UserIndex的方法
	@RequestMapping(value = "/returnUserIndex", method = RequestMethod.GET)
	public String returnUserIndex(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		int uid=Integer.parseInt(request.getParameter("uid"));
		// 通过用户名获取登陆用户的信息
		Users users = usersService.selectByPrimaryKey(uid);
		int height = users.getUheight();
		int weight = users.getUweight();
		DecimalFormat df = new DecimalFormat("0.00"); // 设置double类型小数点后位数格式
		double h = (double) height / 100;
		double h2 = h * h;
		double bmi = weight / h2;
		String Bmi = df.format(bmi);
		request.getSession().setAttribute("Bmi", Bmi);
		request.getSession().setAttribute("users", users);
		// model.addAttribute("users", users);
		return "UserIndex";
	
}
}