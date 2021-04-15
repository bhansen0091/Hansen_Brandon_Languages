package com.hansen.languages;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
@Controller
public class LanguagesApplication {

	public static void main(String[] args) {
		SpringApplication.run(LanguagesApplication.class, args);
	}
	
	@RequestMapping("/")
	public String siteEntry() {
		return "redirect:/languages";
	}

}
