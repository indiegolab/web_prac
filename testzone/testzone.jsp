package com.my.springtest;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.my.model.LoginModel;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/my", method = RequestMethod.GET)
	public String my(Locale locale, Model model) {
		model.addAttribute("test","hello");
		return "my";
	}
	
	@RequestMapping(value = "/b_form", method = RequestMethod.GET)
	public String bFn( HttpServletRequest request, Model model) {
		model.addAttribute("test","hello");
		return "b_form";
	}
	@RequestMapping(value = "/b_view", method = RequestMethod.GET)
	public String bViewFn( HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		model.addAttribute("id",id);
		model.addAttribute("pass",pass);
		return "b_view";
	}
	
	@RequestMapping(value = "/b_viewp", method = RequestMethod.GET)
    public String bViewFn(@RequestParam("id") String id,
    @RequestParam("pass") String pass,
     Model model) {
		//String id = request.getParameter("id");
		//String pass = request.getParameter("pass");
		model.addAttribute("id",id);
		model.addAttribute("pass",pass);
		return "b_view";
	}
	
	@RequestMapping(value = "/b_viewm", method = RequestMethod.GET)
	public String bViewmFn(LoginModel login, Model model) {
		model.addAttribute("login",login);
		
		return "b_viewm";
	}
	
}