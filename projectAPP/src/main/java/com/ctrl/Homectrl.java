package com.ctrl;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import form.entities.Todo;

@Controller
public class Homectrl {
	@Autowired
	ServletContext context;
	@RequestMapping("/home")

		
		
		public String home (Model m) {
			
			String str="home";
			m.addAttribute("page",str);
			List<Todo> li=(List<Todo>)context.getAttribute("list");
			m.addAttribute("todos",li);
			
		return "home";    //home.jsp page(view)
}
	@RequestMapping("/add")
	public String addTodos(Model m) {
		Todo t=new Todo();
		m.addAttribute("page","add");
		m.addAttribute("todo",t);
		return "home";
	}
	@RequestMapping(value="/save" , method=RequestMethod.POST)
	public String saveTodo(@ModelAttribute("todo")Todo t ,Model m)
	{
		System.out.println(t);
		List<Todo> li=(List<Todo>)context.getAttribute("list");
		li.add(t);
		m.addAttribute("msg", "Successfully added....");
	return "home";	
	}
}
