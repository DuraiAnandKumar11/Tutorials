package com.nic.iradfeedback.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nic.iradfeedback.model.UserFeedBack;


public interface FeedBackRepository extends JpaRepository<UserFeedBack, Long> {
 public UserFeedBack findByUserMobile(String userMobile);
}
