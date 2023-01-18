package com.controllerclass;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.dao.dao;
import com.modelclass.model;

@Controller
public class controller {
	@Autowired
	private dao dao;

	@RequestMapping("/about")
	public String about(HttpServletRequest request) {

		/*
		 * request.setAttribute("school", "MY SCHOOL NAME IS DIVINE BUDS SCHOOL");
		 * request.setAttribute("course", "PROGRAMING LANGUAGE JAVA");
		 */

		return "about";
	}

	@RequestMapping("/")
	public String about2(Model m) {

		List<model> list = dao.getAllUser();
		m.addAttribute("list", list);
		return "index";
	}

	@RequestMapping("/home")
	public String home(HttpServletRequest request) {

		return "home";
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public RedirectView addUser(@ModelAttribute model m, HttpServletRequest request) {
		System.out.println(m);
		dao.insertuser(m);

		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() + "/");
		return view;
	}

	@RequestMapping(value = "/update/{id}")
	public ModelAndView getUser(@PathVariable int id) {
		System.out.println("update called : " + id);
		model m = dao.getUserById(id);
		ModelAndView view = new ModelAndView();
		view.addObject("data", m);
		view.setViewName("update");
		return view;
	}

	@RequestMapping(value = "/delete/{id}")
	public RedirectView deleteUser(@PathVariable int id, HttpServletRequest request) {
		model u = dao.getUserById(id);
		dao.deleteUser(u);
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() + "/");
		return view;
	}

}
