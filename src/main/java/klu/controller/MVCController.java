package klu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class MVCController {
	@GetMapping("/")
	public ModelAndView faculty()
	{
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("faculty.jsp");
		return mvc;
	}
}