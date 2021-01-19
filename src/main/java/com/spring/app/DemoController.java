package com.spring.app;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {
	
	@GetMapping("/hello")
	public String display() {
		return "Hello Corona ...Hope your doing good !!!!!!!";
	}

}
