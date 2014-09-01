package com.mcmcg.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/welcome")
public class LoginController {

	@RequestMapping("/createPage")
	public String createUser(ModelMap modelMap,HttpServletRequest request){
		
		List<Employee> empList=new ArrayList<Employee>();
		Employee e1=new Employee();
		e1.setEmpNo(1001);
		e1.setName("sivasankar");
		e1.setContact("87978897");
		e1.setCity("Gurgaon");
		
		Employee e2=new Employee();
		e2.setEmpNo(1002);
		e2.setName("sankar");
		e2.setContact("7598235");
		e2.setCity("Noida");
		
		Employee e3=new Employee();
		e3.setEmpNo(1003);
		e3.setName("Naresh");
		e3.setContact("8759237589");
		e3.setCity("Nellore");
		
		Employee e4=new Employee();
		e4.setEmpNo(1004);
		e4.setName("viji");
		e4.setContact("8985732");
		e4.setCity("nellore");
		
		empList.add(e1);
		modelMap.addAttribute("empList", empList);
		
		return "welcome";
	}
	
	
	
	
	@RequestMapping("/jj")
	public String welcome(ModelMap modelMap){
		System.out.println("klhfklafshhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
		return "welcome";
	}
	
	
}