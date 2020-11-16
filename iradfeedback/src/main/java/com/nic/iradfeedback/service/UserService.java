package com.nic.iradfeedback.service;

import java.util.List;

import com.nic.iradfeedback.model.UserFeedBack;
import com.nic.iradfeedback.model.UserMaster;

public interface UserService {
    void save(UserMaster user);
    public List<UserFeedBack> getAllUser() throws Exception;
}
