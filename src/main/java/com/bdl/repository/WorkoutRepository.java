package com.bdl.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bdl.entity.Workout;


@Repository
public interface WorkoutRepository extends JpaRepository<Workout, String> {
	@Query("Select W from Workout W where planId=1")
	ArrayList<Workout> getWorkoutByPlanId();

}
