package com.C1709L.project.matrimony.controller;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.C1709L.project.matrimony.model.Member;
import com.C1709L.project.matrimony.model.Search;
import com.C1709L.project.matrimony.service.MemberService;

@Controller
@RequestMapping("/")
public class MemberController {
	@Autowired
	MemberService memberService;

	
	@RequestMapping(value = { "/newmember" }, method = RequestMethod.GET)
	public String newMember(ModelMap model) {
		Member member = new Member();
		model.addAttribute("member", member);
		model.addAttribute("edit", false);
		return "RegisterMember";
	}
	
	@RequestMapping(value = { "/newmember" }, method = RequestMethod.POST)
	public String saveMember(@Valid Member member, BindingResult result,
			ModelMap model) {

		if (result.hasErrors()) {
			return "RegisterMember";
		}

		memberService.saveMember(member);

		model.addAttribute("memberSuccess",member.getUsername() + " " + " added successfully");
		return "redirect:/home?id="+member.getId();
	}
	@RequestMapping(value = {"/home" }, method = RequestMethod.GET)
	public String getMember(ModelMap model, long id) {

		Member member = memberService.findById(id);
		model.addAttribute("member", member);	
		return "homepage";
	}
	
	@RequestMapping(value = {"/search" }, method = RequestMethod.GET)
	public String seachMember(ModelMap model) {
		Search search = new Search();
		model.addAttribute("search",search);
		model.addAttribute("edit", false);
		return "seachpage";
	}
	@RequestMapping(value = {"/search" }, method = RequestMethod.POST)
	public String seachMemberResult(@Valid Search search, BindingResult result,
			ModelMap model) {
		String gender = "MALE";
		List<Member> list = memberService.searchMember(search.getUsername(), search.getCaste(), gender);
		model.addAttribute("list",list);
		return "seachpage";
	}

}
