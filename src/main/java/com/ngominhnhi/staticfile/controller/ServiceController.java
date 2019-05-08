package com.ngominhnhi.staticfile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	
	@RequestMapping("/services-list")
	public String serviceList() {
		return "services-list";
	}
}
