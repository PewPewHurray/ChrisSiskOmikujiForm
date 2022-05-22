package com.codingdojo.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class HomeController {
	@GetMapping("")
	public String index() {
		return "index.jsp";
	}

	@PostMapping("/process")
	public String process(@RequestParam int number, @RequestParam String city, @RequestParam String name,
			@RequestParam String profession, @RequestParam String livingThing, @RequestParam String message, HttpSession session) {
			session.setAttribute("result", String.format("In %s years, you will live in %s with %s as your roommate, selling %s for a living. The next time you see a %s, you will have good luck. Also, %s.", number, city, name, profession, livingThing, message));
		return "redirect:/omikuji/show";
	}

	@GetMapping("/show")
	public String show(HttpSession session, Model model) {
		model.addAttribute("number", session.getAttribute("result"));
		return "show.jsp";
	}
}
