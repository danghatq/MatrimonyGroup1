package com.C1709L.project.matrimony.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.C1709L.project.matrimony.dao.MemberDao;
import com.C1709L.project.matrimony.model.Member;

@Service("memberService")
@Transactional
public class MemberService {
	@Autowired
	private MemberDao dao;

	public void saveMember(Member member) {
		member.setCreateDatetime(new Date());

		SimpleDateFormat df = new SimpleDateFormat("yyyy:MM:dd");
		Date d = member.getCreateDatetime();
		Calendar cal = Calendar.getInstance();
		cal.setTime(d);
		if ("M".equals(member.getStatus())) {
			cal.add(Calendar.MONTH, 1);
			member.setUpdateDatetime(cal.getTime());
		}
		else if ("Y".equals(member.getStatus())) {
			cal.add(Calendar.YEAR, 1);
			member.setUpdateDatetime(cal.getTime());
		}
		dao.save(member);
	}

	public Member findById(long id) {
		return dao.findById(id);
	}
	public List<Member> searchMember(String username, String caste, String gender) {
		return dao.seachMember(username, caste, gender);
	}
}
