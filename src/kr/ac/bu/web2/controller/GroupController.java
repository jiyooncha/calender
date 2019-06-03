 package kr.ac.bu.web2.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.bu.web2.domain.Group;
import kr.ac.bu.web2.service.GroupService;


@Controller
@RequestMapping("group")
public class GroupController {
	
	@Autowired
	private GroupService service;
	
	@RequestMapping("list.do")
	public String findAll(Model model) {
		
		List<Group> group = service.findAllGroups();
		model.addAttribute("groups", group);
		return "plan/planMain";	
	}
	@RequestMapping("Mgntgroup.do")
	public String findAllgroups(Model model)	{ 
		List<Group> group = service.findAllGroups();
		model.addAttribute("groups",  group);

		return "group/groupList";
	}
	
	@RequestMapping(value="create.do", method=RequestMethod.GET)
	public String regist(Model model) {
		
		List<Group> group = service.findAllGroups();
		model.addAttribute("groups", group);
		
		return "group/groupCreate";
	}
	
	@RequestMapping(value="create.do", method=RequestMethod.POST)
	public String create(Group group, HttpSession session) {
		System.out.println(group.getGroupId());
		System.out.println(group.getGroupName());
		service.createGroup(group);
		
		System.out.println(group.getGroupName());
		
		return "redirect:/group/Mgntgroup.do";
	}

	@RequestMapping("find.do")
	public String find(int GroupId, Model model) {
		
		List<Group> groups = service.findAllGroups();
		model.addAttribute("groups",groups);
		
		Group group = service.findGroup(GroupId);
		model.addAttribute("groupDetail", group);
		
		return "plan/planList";
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.GET)
	public String modeify(int GroupId, Model model) {
		List<Group> groups = service.findAllGroups();
		model.addAttribute("groups", groups);
		
		Group group = service.findGroup(GroupId);
		
		model.addAttribute("groups", groups);
		model.addAttribute("groupDetail", group);
		
		return "group/groupModify";
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.POST)
	public String modify(Group group) {
		service.modifyGroup(group);
		
		return "redirect:/group/modify.do?groupID"+group.getGroupId();
	}
	
	@RequestMapping(value="remove.do")
	public String remove(int groupId)	{
		service.removeGroup(groupId);
		return "redirect:/group/find.do";
	}
}
