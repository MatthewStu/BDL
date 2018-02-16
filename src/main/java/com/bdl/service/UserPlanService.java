package com.bdl.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdl.entity.UserPlan;
import com.bdl.repository.UserPlanRepository;

@Service
public class UserPlanService {
	
	@Autowired
	UserPlanRepository userPlanRepository;
	
	public void saveUserPlan (UserPlan userPlan) {
		userPlanRepository.save(userPlan);
	}

}
