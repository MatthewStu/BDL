package com.bdl.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bdl.entity.UserPlan;

@Repository
public interface UserPlanRepository extends JpaRepository <UserPlan, String>{
}
