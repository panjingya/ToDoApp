package com.springmvc.todo;

import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class TodoController {

  @Autowired
  TodoService service;
  
  @RequestMapping(value="/list-todos", method = RequestMethod.GET)
  public String showTodoList(ModelMap model) {
    model.put("todos", service.retrieveTodos("May"));
    return "list-todos";
  }
  @RequestMapping(value = "/add-todo", method = RequestMethod.GET)
  public String showTodoPage() {
    return "todo";
  }
  @RequestMapping(value = "/add-todo", method = RequestMethod.POST)
  public String addTodo(@RequestParam String desc,ModelMap model) {
    service.addTodo("May", desc, new Date(), false);
    model.clear();
    return "redirect:list-todos";
  }
}
