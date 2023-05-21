package com.enoch.chris.lessonplanwebsite.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.enoch.chris.lessonplanwebsite.dao.UserRepository;
import com.enoch.chris.lessonplanwebsite.entity.User;
import com.enoch.chris.lessonplanwebsite.registration.user.RegistrationUser;
import com.enoch.chris.lessonplanwebsite.service.UsersService;


@Controller
@RequestMapping("/register")
public class RegistrationController {
	
    private UsersService usersService;
	private UserRepository userRepository;
    
    @Autowired
    public RegistrationController(UserRepository userRepository, UsersService userService) {
		this.userRepository = userRepository;
		this.usersService = userService;
	}

	private Logger logger = Logger.getLogger(getClass().getName());
    
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}	
	
	@GetMapping("/showRegistrationForm")
	public String showMyLoginPage(Model theModel) {
		
		if (theModel.getAttribute("registrationError") != null){
			System.out.println("Debugging: Errors sent");
		}
		
		theModel.addAttribute("regUser", new RegistrationUser());
		
		return "registration-form";
	}
	

	/**
	 * Processes the registration request, validates the input, ensures the username and email do not already exist
	 * and saves the user in the database if no errors are present.
	 * @param regUser - DTO with validation rules used for the registration
	 * @param theBindingResult
	 * @param theModel
	 * @param redirectAttributes
	 * @return the login page upon success or the registration page indicating the errors.
	 */
	@PostMapping("/processRegistrationForm")
	public String processRegistrationForm(
				@Valid @ModelAttribute("regUser") RegistrationUser regUser, 
				//@Valid final RegistrationUser regUser, 
				BindingResult theBindingResult, 
				Model theModel, RedirectAttributes redirectAttributes) {
		
		
		System.out.println("Inside processRegistrationForm");
		String username = regUser.getUserName();
		logger.info("Processing registration form for: " + username);
		
		// form validation
		System.out.println("Inside processRegistrationForm b4 if binding result");
		 if (theBindingResult.hasErrors()){
			 System.out.println("Debugging has errors - RegistrationController");
				 
			 return "registration-form";
	        }
	 
		// check the database if user already exists
		 List<String> registrationErrors = new ArrayList<>();
		 boolean errorExists = false;
		 User existingUserToTestForUsername;
		 try {
			 existingUserToTestForUsername = userRepository.findByUsername(username);
		 } catch(Exception exc){
			 existingUserToTestForUsername = null;
		 }
 
        if (existingUserToTestForUsername != null){
        	theModel.addAttribute("regUser", regUser);
        	registrationErrors.add("*User name already exists.");
			//theModel.addAttribute("registrationError", "User name already exists.");
			logger.warning("Username already exists.");
			errorExists = true;
        }
        
        User existingUserToTestForEmail;
        String email = regUser.getEmail();
        try {
        	existingUserToTestForEmail = userRepository.findByEmail(email);     	
        } catch (Exception exc) {
        	existingUserToTestForEmail = null;
        }

        if (existingUserToTestForEmail != null) {
        	theModel.addAttribute("regUser", regUser);
        	registrationErrors.add("*Email already exists"); 
        	//registrationErrors.add("*Email already exists");
        	//theModel.addAttribute("registrationError", registrationErrors);    	
        	logger.warning("Email already exists.");
        	errorExists = true;
        	//return "redirect:/register/showRegistrationForm";
        }
        
        if (errorExists) {
        	redirectAttributes.addFlashAttribute("registrationError", registrationErrors);
        	//return "redirect:/register/showRegistrationForm";
        	return "registration-form";
        }
        
        
     // create user account        						
        usersService.save(regUser);
        
        logger.info("Successfully created user: " + username);
        theModel.addAttribute("registrationSuccess", "registrationSuccess");
        
        return "fancy-login";		
	}
	
	@GetMapping("/processRegistrationForm")
	public String processRegistrationForm() {
		return "redirect:/register/showRegistrationForm";
	}
}
