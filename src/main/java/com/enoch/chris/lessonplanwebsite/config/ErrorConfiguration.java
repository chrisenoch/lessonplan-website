package com.enoch.chris.lessonplanwebsite.config;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * This replaces the whitelabel error page automatically generated by Spring.
 * @author chris
 *
 */
@Controller
public class ErrorConfiguration implements ErrorController  {
	
//	@Autowired
//	private ErrorAttributes errorAttributes;

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request) {  	

        return "error";
    }
    
}
