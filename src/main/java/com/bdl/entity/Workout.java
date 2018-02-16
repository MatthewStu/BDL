package com.bdl.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Workout {

	@Column
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int workoutId;
	@Column
	private String workoutName;
	@Column
	private String workoutDescription;
	@Column
	private String workoutVideo1;
	@Column
	private String workoutVideo2;
	@Column
	private String workoutVideo3;
	@Column
	private String workoutVideo4;
	@Column
	private int planId;
	
	public int getWorkoutId() {
		return workoutId;
	}
	public void setWorkoutId(int workoutId) {
		this.workoutId = workoutId;
	}
	public String getWorkoutName() {
		return workoutName;
	}
	public void setWorkoutName(String workoutName) {
		this.workoutName = workoutName;
	}
	public String getWorkoutDescription() {
		return workoutDescription;
	}
	public void setWorkoutDescription(String workoutDescription) {
		this.workoutDescription = workoutDescription;
	}
	public String getWorkoutVideo1() {
		return workoutVideo1;
	}
	public void setWorkoutVideo1(String workoutVideo1) {
		this.workoutVideo1 = workoutVideo1;
	}
	public String getWorkoutVideo2() {
		return workoutVideo2;
	}
	public void setWorkoutVideo2(String workoutVideo2) {
		this.workoutVideo2 = workoutVideo2;
	}
	public String getWorkoutVideo3() {
		return workoutVideo3;
	}
	public void setWorkoutVideo3(String workoutVideo3) {
		this.workoutVideo3 = workoutVideo3;
	}
	public String getWorkoutVideo4() {
		return workoutVideo4;
	}
	public void setWorkoutVideo4(String workoutVideo4) {
		this.workoutVideo4 = workoutVideo4;
	}
	
	public int getPlanId() {
		return planId;
	}
	public void setPlanId(int planId) {
		this.planId = planId;
	}
	@Override
	public String toString() {
		return "Workout [workoutId=" + workoutId + ", workoutName=" + workoutName + ", workoutDescription="
				+ workoutDescription + ", workoutVideo1=" + workoutVideo1 + ", workoutVideo2=" + workoutVideo2
				+ ", workoutVideo3=" + workoutVideo3 + ", workoutVideo4=" + workoutVideo4 + "]";
	}
	
	
}
