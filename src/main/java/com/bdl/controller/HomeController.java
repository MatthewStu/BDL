package com.bdl.controller;

import java.util.ArrayList;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bdl.entity.Plan;
import com.bdl.entity.User;
import com.bdl.entity.UserPlan;
import com.bdl.entity.Workout;
import com.bdl.service.PlanService;
import com.bdl.service.SendEmail;
import com.bdl.service.UserPlanService;
import com.bdl.service.UserService;
import com.bdl.service.WorkoutService;


@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PlanService planService;
	
	@Autowired
	private WorkoutService workoutService;
	
	@Autowired
	private SendEmail sendEmail;
	
	@Autowired
	private UserPlanService userPlanService;
	
	@RequestMapping("/")
	public ModelAndView index()
	{
		return new ModelAndView("index");
	} 

	@RequestMapping("/SkillsDrills")
	public ModelAndView skillsDrills()
	{
		return new ModelAndView("skillsDrills");
	}
	
	@RequestMapping("/plan")
	public ModelAndView plan(HttpSession session)
	{
		User user = (User)session.getAttribute("user");
		if(user == null)
			return new ModelAndView("signUp","user", new User());
		else {
			ArrayList<Plan> plans = planService.getAllPlans();
			ArrayList<Workout> workouts = workoutService.getAllWorkouts();
			for (Plan plan : plans) {
				for (Workout workout : workouts) {
					if(workout.getPlanId() == plan.getPlanId())
						plan.getWorkouts().add(workout);
				}
			}
			
			session.setAttribute("plans", plans);
			return new ModelAndView("plan", "userPlan", new UserPlan());
		}
	}
	
	@RequestMapping(value="/signUp", method=RequestMethod.GET)
	public ModelAndView mysignUp()
	{
		return new ModelAndView("signUp","user", new User());
	}
	
	@RequestMapping(value="/signUp", method= RequestMethod.POST)
	public ModelAndView signUp(@ModelAttribute("user")User user,  HttpSession session)
	{
		userService.saveUser(user);
		session.setAttribute("user",user);
		sendEmail.sendMail(user.getEmail(), "Welcome to BDL!", "Your journey to elite training begins here.");
		return new ModelAndView("signUp");
	}
	
	@RequestMapping(value="/login", method= RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("user")User user, HttpSession session)
	{
		User loggedInUser = userService.checkLogin(user.getEmail(), user.getPassword());
		if(loggedInUser != null)
		{
			session.setAttribute("user", loggedInUser);
			ArrayList<Plan> plans = planService.getAllPlans();
			ArrayList<Workout> workouts = workoutService.getAllWorkouts();
			for (Plan plan : plans) {
				for (Workout workout : workouts) {
					if(workout.getPlanId() == plan.getPlanId())
						plan.getWorkouts().add(workout);
				}
			}
			
			session.setAttribute("plans", plans);
			return new ModelAndView("plan", "userPlan", new UserPlan());
			
		}
		
		return new ModelAndView("signUp");
	}
	
	@RequestMapping(value="/dribbling", method= RequestMethod.GET)
	public ModelAndView dribbling(HttpSession session)
	{
		ArrayList<Workout> workouts = workoutService.getWorkoutByPlanId();
		session.setAttribute("workouts", workouts);
		return new ModelAndView("dribbling");	
	}
	
	@RequestMapping(value="/showVideo", method= RequestMethod.GET)
	public ModelAndView showVideo(HttpSession session)
	{
		return new ModelAndView("video");	
	}
	
	@RequestMapping(value="/testW", method=RequestMethod.POST)
	public ModelAndView test(@ModelAttribute("userPlan")UserPlan userPlan, HttpSession session)
	{
		System.out.println("Session object: "+(User)session.getAttribute("user"));
		User user = (User)session.getAttribute("user");
		userPlan.setEmailUser(user.getEmail());
		userPlanService.saveUserPlan(userPlan);
		
		String msg = "Here is your list of selected workouts: \n";
		for (String name : userPlan.getWorkoutName()) {
			msg +=" \n"+ name;
		}
		
		sendEmail.sendMail(user.getEmail(), "Personalised Plan", msg);
		
		return new ModelAndView("userPlan","userPlan", userPlan);
	}
	
	@RequestMapping(value="/logout", method= RequestMethod.GET)
	public ModelAndView logout(HttpSession session)
	{
		session.removeAttribute("user");
		//session.invalidate();
		return new ModelAndView("index");	
	}
	

}
