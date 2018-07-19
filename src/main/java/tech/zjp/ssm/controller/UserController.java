package tech.zjp.ssm.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

import tech.zjp.ssm.service.IUserService;
import tech.zjp.ssm.vo.User;

/**
 *
 * @Author: zhoujunpeng
 * @Date: 2018年7月11日 下午4:02:19
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private IUserService userService;
	
	@RequestMapping("/showUser")
	public String toIndex(HttpServletRequest request,Model model) {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = userService.getUserById(userId);
		model.addAttribute("user", user);
		return "user";
	}
	
	@RequestMapping("/toGetAllUsers")
	public String toGetAllUsers() {
		return "getAllUsers";
	}
	
	@ResponseBody
	@RequestMapping("/getAllUsers")
	public Map getAllUsers(@RequestParam(defaultValue="1")Integer page,@RequestParam(defaultValue="10")Integer rows) {
		Map map = new HashMap<>();
		map.put("start", (page-1)*rows);
		map.put("end", rows);
		map.put("rows", userService.getAllUsers(map));
		map.put("total", userService.getAllUsersCount());
//		String json = JSON.toJSONString(map);
		return map;
	}
	@RequestMapping("/toAddUser")
	public String toAddUser() {
		return "adduser";
	}
	
	@ResponseBody
	@RequestMapping("/addUser")
	public Map addUser(User user) {
		System.out.println(user.toString());
		int row = userService.addUser(user);
		Map map = new HashMap<>();
		if (row > 0) {
			map.put("msg", "添加成功");
			map.put("success", true);
		} else {
			map.put("msg", "添加失败");
			map.put("success", false);
		}
		return map; 
	}

	@RequestMapping("/toUpdateUser")
	public ModelAndView toUpdateUser(Integer id) {
		ModelAndView mav = new ModelAndView("updateUser");
		mav.addObject("user", userService.getUserById(id));
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/updateUser")
	public Map updateUser(User user) {
		int row = userService.updateUser(user);
		Map map = new HashMap<>();
		if (row > 0) {
			map.put("msg", "修改成功");
			map.put("success", true);
		} else {
			map.put("msg", "修改失败");
			map.put("success", false);
		}
		return map; 
	}
	@ResponseBody
	@RequestMapping("/deleteUserById")
	public Map deleteUserById(int id) {
		System.err.println(id);
		int row = userService.deleteUserById(id);
		Map map = new HashMap<>();
		if (row > 0) {
			map.put("msg", "删除成功");
			map.put("success", true);
		} else {
			map.put("msg", "删除失败");
			map.put("success", false);
		}
		return map; 
	}
}
