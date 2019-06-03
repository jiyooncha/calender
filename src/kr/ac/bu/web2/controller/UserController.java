package kr.ac.bu.web2.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.ac.bu.web2.domain.User;
import kr.ac.bu.web2.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService service;

	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(Model model, HttpSession session, String userId, String userPw) {

		User user = new User();

		user.setUserId(userId);
		user.setUserPw(userPw);

		user = service.login(user);

		try {
			if (!user.getUserName().equals("null")) {
				session.setAttribute("id", user.getUserId());
				return "redirect:/views/common/delete.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("loginFail", "ID/PW를 확인하세요");
			return "common/login";
		}
		return "common/login";
	}
	
	@RequestMapping(value = "modify.do", method = RequestMethod.POST)
	public void modify(Model model, HttpSession session, String userId, String userPw) {
	
		service.delete(userId);
		
		return;
	}
	
	@RequestMapping(value = "modify.do", method = RequestMethod.GET)
	public void modify(Model model, HttpSession session, String userId) {
		service.delete(userId);
		return;
	}
	
	@RequestMapping(value = "delete.do", method = RequestMethod.GET)
	public void delete(Model model, HttpSession session, String userId) {
		session.getAttribute("id");	// id
		
//		String id = (String) session.getAttribute("id");
//		System.out.println("id " + session.getAttribute("id"));
		
		System.out.println("userId " + userId);
		service.delete(userId);
		
		return;
	}
	
}
