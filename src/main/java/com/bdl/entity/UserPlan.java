package com.bdl.entity;

import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table
public class UserPlan {
	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userPlanId;
	@Column
	private String emailUser;
	@Column
	private ArrayList<String> workoutName = new ArrayList<>();
	@Column
	private String workoutStatus;
	
	public String getEmailUser() {
		return emailUser;
	}
	public void setEmailUser(String emailUser) {
		this.emailUser = emailUser;
	}
	
	public ArrayList<String> getWorkoutName() {
		return workoutName;
	}
	public void setWorkoutName(ArrayList<String> workoutName) {
		this.workoutName = workoutName;
	}
	public String getWorkoutStatus() {
		return workoutStatus;
	}
	public void setWorkoutStatus(String workoutStatus) {
		this.workoutStatus = workoutStatus;
	}
	@Override
	public String toString() {
		return "UserPlan [emailUser=" + emailUser  + ", workoutName=" + workoutName
				+ ", workoutStatus=" + workoutStatus + "]";
	}

}
