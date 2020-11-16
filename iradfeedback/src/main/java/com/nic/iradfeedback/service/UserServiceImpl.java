package com.nic.iradfeedback.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.nic.iradfeedback.model.UserFeedBack;
import com.nic.iradfeedback.model.UserMaster;
import com.nic.iradfeedback.repository.FeedBackRepository;
import com.nic.iradfeedback.repository.MasterRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private MasterRepository masterRepository;
	
	@Autowired
	private FeedBackRepository repository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public void save(UserMaster userMaster) {
		userMaster.setUserPassword(bCryptPasswordEncoder.encode(userMaster.getUserPassword()));
		masterRepository.save(userMaster);
	}

	public UserMaster findByUserMobile(String mobileNumber) {
		return masterRepository.findByUserMobile(mobileNumber);
	}

	@Override
	public List<UserFeedBack> getAllUser() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public List<UserFeedBack> getAllUser() throws Exception {
//		// TODO Auto-generated method stub
//		try {
//			 List<UserFeedBack> responseObject = repository.findAll();
//			 
//			 ArrayList<UserFeedBack> responseList=new ArrayList<UserFeedBack>();
//			if(responseObject!=null) {
//				Iterator<UserFeedBack> iter =responseObject.iterator();
//				while(iter.hasNext()) 
//				{
//					UserFeedBack userResponse = new UserFeedBack();
//					UserFeedBack userDetails=(UserFeedBack) iter.next();
//					userResponse.setUserMobile(userDetails.getUserMobile());
//					System.out.println(userDetails.getUserMobile());
//					responseList.add(userResponse);
//				}
//				return responseList;
//			}else {
//				
//			}
//			}catch(Exception e) {
//				e.printStackTrace();
//				throw e;
//				}
//			
//		return null;
//	}
}
