package kr.ac.bu.web2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.bu.web2.domain.User;
import kr.ac.bu.web2.service.UserService;

@Controller
@RequestMapping("user")
public class JoinController {

	@Autowired
	private UserService service;

	@RequestMapping(value = "join.do")
	public String join(Model model)	{
		
		
		model.addAttribute("joinFail","중복된 아이디 입니다.");
		
		return "common/join";
	}
	
	@RequestMapping(value = "join.do", method = RequestMethod.POST)
	public String join(String userId, String userPw, String userName, String userPhone, User user){

		user.setUserId(userId);
		user.setUserPw(userPw);
		user.setUserName(userName);
		user.setUserPhone(userPhone);

		System.out.println("controller" + userId);
		
		try {
			service.register(user);
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/user/join.do";
		}
		return "common/login";

	}
}
