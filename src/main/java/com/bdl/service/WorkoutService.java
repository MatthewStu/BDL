package com.bdl.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdl.entity.Workout;
import com.bdl.repository.WorkoutRepository;

@Service
public class WorkoutService {
	
	@Autowired
	WorkoutRepository workoutRepository;

	public ArrayList<Workout> getAllWorkouts() {
		return (ArrayList<Workout>) workoutRepository.findAll();
	}

	public ArrayList<Workout> getWorkoutByPlanId() {
		return workoutRepository.getWorkoutByPlanId();
	}

}
