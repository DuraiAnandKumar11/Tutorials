package com.nic.iradfeedback.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nic.iradfeedback.model.UserFeedBack;
import com.nic.iradfeedback.model.UserMaster;
import com.nic.iradfeedback.repository.FeedBackRepository;
import com.nic.iradfeedback.repository.MasterRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private MasterRepository masterRepository;
	@Autowired
	private FeedBackRepository repository;

	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String mobileNumber) throws UsernameNotFoundException {
		UserMaster usermaster = masterRepository.findByUserMobile(mobileNumber);
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();

		return new org.springframework.security.core.userdetails.User(usermaster.getUserMobile(),
				usermaster.getUserPassword(), grantedAuthorities);
	}
//	@Override
//	public ArrayList<UserFeedBack> getAllUser() throws Exception {
//		try {
//			List<UserFeedBack> responseObject = repository.findAll();
//			ArrayList<UserFeedBack> responseList=new ArrayList<UserFeedBack>();
//			if(responseObject!=null) {
//				Iterator<UserFeedBack> iter =responseObject.iterator();
//				while(iter.hasNext()) 
//				{
//					UserFeedBack userFeedback = new UserFeedBack();
//					UserFeedBack userDetails = (UserFeedBack)iter.next();
//					userFeedback.setFieldName(userDetails.getFieldName());
//					userFeedback.setFeedBackType(userFeedback.getFeedBackType());
//					userFeedback.setPageName(userDetails.getPageName());
//					userFeedback.setRemark(userDetails.getRemark());
//				}
//					
//			}
//	}catch(Exception e) {
//		e.printStackTrace();
//		throw e;
//		}
//	}
}