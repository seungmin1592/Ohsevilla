package com.project.ohsevilla;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class IndexController {
	
	
	@RequestMapping(value = "/index")
	public String home(Locale locale, Model model) {
		
		return "index";
	}
	
}