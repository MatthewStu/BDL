package com.bdl.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdl.entity.Plan;
import com.bdl.repository.PlanRepository;

@Service
public class PlanService {
	
	@Autowired
	PlanRepository planRepository;

	public ArrayList<Plan> getAllPlans() {
		return (ArrayList<Plan>)planRepository.findAll();
	}
}
