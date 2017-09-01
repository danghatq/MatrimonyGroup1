package com.C1709L.project.matrimony.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.C1709L.project.matrimony.model.Member;

@Repository("memberDao")
public class MemberDao extends AbstractDao<Integer, Member> {
	static final Logger logger = LoggerFactory.getLogger(MemberDao.class);

	public void save(Member member) {
		persist(member);
	}

	public Member findById(long id) {
		logger.info("id : {}", id);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		Member member = (Member) crit.uniqueResult();
		return member;
	}

	public List<Member> seachMember(String username, String caste, String gender) {
		List<Member> list = new ArrayList<>();
		
		Criteria crit = createEntityCriteria();
		if (!username.isEmpty() && caste.isEmpty()) {
			crit.add(Restrictions.eq("username", username));
			crit.add(Restrictions.eq("gender", gender));
			list = (List<Member>) crit.list();
			return list;
		}
		if (username.isEmpty() && !caste.isEmpty()) {
			crit.add(Restrictions.and(Restrictions.eq("caste", caste), Restrictions.eq("gender", gender)));
			list = (List<Member>) crit.list();
			return list;
		}
		if (!username.isEmpty() && !caste.isEmpty()) {
			crit.add(Restrictions.and(Restrictions.eq("username", username),
					Restrictions.and(Restrictions.eq("gender", gender), Restrictions.eq("caste", caste))));
			list = (List<Member>) crit.list();
			return list;
		}
		
		return null;
	}

}
