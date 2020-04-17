package com.springmvc.todo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TodoRestController {
  
  @Autowired
  private TodoService service;
  
  @RequestMapping(value="/todos", method = RequestMethod.GET)
  public List<Todo> listAllTodos(){
    List<Todo> list = service.retrieveTodos("May");
    return list;
  }
  @RequestMapping(value="/todos/{id}",method = RequestMethod.GET)
  public Todo retrieveTodo(@PathVariable int id) {
    Todo todo = service.retrieveTodo(id);
    return todo;
  }
}
