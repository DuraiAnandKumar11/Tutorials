package com.nic.iradfeedback.web;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nic.iradfeedback.model.UserFeedBack;
import com.nic.iradfeedback.model.UserMaster;
import com.nic.iradfeedback.repository.FeedBackRepository;
import com.nic.iradfeedback.repository.MasterRepository;
import com.nic.iradfeedback.service.UserService;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

@Controller
//@RequestMapping("/iRadFeedback")
public class UserController {

	@Autowired
	private ResourceLoader resourceLoader;

	@Autowired
	private DatabaseConnection databaseConnection;

	@Autowired
	private UserService userService;

	@Autowired
	private FeedBackRepository repository;

	@Autowired
	private MasterRepository masterRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	// @RequestMapping(value = "/index", method = RequestMethod.GET)
//	public String home(Model model) {
//		return "index";
//	}

	@RequestMapping(value = "/Country", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	 public @ResponseBody String loadCityByCountry() {
	 System.out.println("secc");
	  
	  return "cities";
	 }
	
	
	
	
	
	
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Model model, UserFeedBack userFeedback) {

		return "feedbackData";
	}

	@PostMapping("/admin")
	public List<UserFeedBack> getAllUser(Model model) throws Exception {
		System.out.println("success");
		// TODO Auto-generated method stub
		try {
			List<UserFeedBack> responseObject = repository.findAll();

			ArrayList<UserFeedBack> responseList = new ArrayList<UserFeedBack>();
			if (responseObject != null) {
				Iterator<UserFeedBack> iter = responseObject.iterator();
				while (iter.hasNext()) {
					UserFeedBack userResponse = new UserFeedBack();
					UserFeedBack userDetails = (UserFeedBack) iter.next();
					userResponse.setUserMobile(userDetails.getUserMobile());
					System.out.println(userDetails.getUserMobile());
					responseList.add(userResponse);
				}
				model.addAttribute("mobileList", responseList);
				return responseList;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

		return null;
	}

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Model model) {
		int savedOrNot = 0;
		model.addAttribute("flag", savedOrNot);
		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registration(@ModelAttribute("userForm1") UserMaster userMasterForm, Model model) {
		System.out.println("working1");
		UserMaster mNum = masterRepository.findByUserMobile(userMasterForm.getUserMobile());
		String message = "This Mobile Number already Registrated  : " + userMasterForm.getUserMobile();
		int savedOrNot = 1;
		if (mNum == null) {
			System.out.println("enter");
			userService.save(userMasterForm);
			model.addAttribute("flag1", savedOrNot);
			return "registration";
		} else {
			System.out.println("not working");
			model.addAttribute("validnumber", 1);
			model.addAttribute("message", message);
			return "registration";
		}
	}

	@RequestMapping(value = "/forgetform", method = RequestMethod.GET)
	public String forget(Model model) {
		int passwordSavedOrNot = 0;
		model.addAttribute("passwordSavedOrNot", passwordSavedOrNot);
		return "forgot";
	}

	@RequestMapping(value = "/forgetform", method = RequestMethod.POST)
	public String updateForgetPassword(@ModelAttribute("userForm") UserMaster userMaster, Model model)
			throws IOException {

		UserMaster mNum = masterRepository.findByUserMobile(userMaster.getUserMobile());
		String message = "Please Enter Registrated Mobile Number";

		if (mNum != null) {
			int passwordSaved = 2;
			userMaster.setId(mNum.getId());
			userMaster.setUserDept(mNum.getUserDept());
			userMaster.setUserDesignation(mNum.getUserDesignation());
			userMaster.setUserEmail(mNum.getUserEmail());
			userMaster.setUserLocation(mNum.getUserLocation());
			userMaster.setUserState(mNum.getUserState());
			userMaster.setUserMobile(mNum.getUserMobile());
			userMaster.setUserName(mNum.getUserName());
			userMaster.setUserPassword(bCryptPasswordEncoder.encode(userMaster.getUserPassword()));
			userMaster.setUserStateCode(mNum.getUserStateCode());
			masterRepository.save(userMaster);
			model.addAttribute("passwordSaved", passwordSaved);
			return "forgot";

		} else {
			model.addAttribute("validnumber", 1);
			model.addAttribute("message", message);
			return "forgot";
		}

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		System.out.println("working");
		if (error != null)
			model.addAttribute("error", "Your Mobile Number and Password is invalid.");

//		if (logout != null)
//			model.addAttribute("message", "Logged out successfully.");

		return "login";
	}

	@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
	public String welcome(Model model) {
		int feedback = 0;
		model.addAttribute("feedback", feedback);
		return "welcome";
	}

	@RequestMapping(value = "/getfeedback", method = RequestMethod.POST)
	public String feedbackform(@ModelAttribute("userForms") UserFeedBack feedBack, Model model) {
		System.out.println(feedBack.getFeedBackType());
		int feedbackReceived = 1;
		feedBack.setCreatedDate(java.time.LocalDate.now());
		repository.save(feedBack);
		model.addAttribute("feedbackReceived", feedbackReceived);
		return "welcome";
	}

	@RequestMapping(value = "/iradreport", method = RequestMethod.GET)
	public String iradReport(Model model) {
		System.out.println("Welcome Report Page");
		return "feedbackreport";
	}

	@RequestMapping(value = "/iradreport", method = RequestMethod.POST)
	public void iradReportCreate(UserFeedBack feedBack, Model model, HttpServletResponse response) {
		System.out.println("Welcome Report");
		try {
			Connection connection = databaseConnection.getConnect();
			Map<String, Object> parameters = new HashMap<String, Object>();
			String value = feedBack.getPageName();
			String path = resourceLoader.getResource("classpath:reports/feedbackreport.jrxml").getURI().getPath();
			parameters.put("pageName", value);
			JasperPrint jasperPrint = null;
			JasperReport jasperReport = JasperCompileManager.compileReport(path);
			jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, connection);
			if (jasperPrint.getPages().isEmpty()) {
				response.setContentType("text");
				PrintWriter out = response.getWriter();
				out.write("No Records Found");
				out.flush();
				out.close();
			} else {
				byte buffer[] = JasperExportManager.exportReportToPdf(jasperPrint);
				response.setContentType("application/pdf");
				response.setContentLength(buffer.length);
				OutputStream out = response.getOutputStream();
				out.write(buffer, 0, buffer.length);
				out.flush();
				out.close();
			}
		} catch (Exception e) {
			System.out.println("Fixed the issue First...." + e);
		}
		return;
	}

}
