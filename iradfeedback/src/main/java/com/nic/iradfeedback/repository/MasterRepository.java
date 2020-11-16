package com.nic.iradfeedback.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.nic.iradfeedback.model.UserMaster;


public interface MasterRepository extends JpaRepository<UserMaster, String> {

	UserMaster findByUserMobile(String mobileNumber);
}
