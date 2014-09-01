package com.mcmcg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

	@Controller
	@RequestMapping("/ajax")
	public class AjaxController {

		@RequestMapping(value="/method",method=RequestMethod.GET)
		public @ResponseBody Employee createUser(ModelMap modelMap){
			Employee employee = new Employee();
			employee.setName("sivasankar");
			employee.setCity("Nellore");
			employee.setContact("74981247");
			employee.setEmpNo(12313);
			System.out.println(".................................................");
			try {
				Thread.currentThread().sleep(10000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return employee;
		}
		}
