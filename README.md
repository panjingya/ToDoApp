# ToDoApp Using SpringMVC 

--Process

All the request goes to DispatcherSelvet, and DispatcherServlet will find the proper controller to handle the request, the method in controller will be invoked, return a String and model back to the DispatcherServlet.

If there is no @ResponseBody means the String stands for a view name, so DispatcherServlet will find the viewResolver(defined in spring context configuration) to generate the complete view name.

Using the view name to find in the view templates and response back with JSP.

--Framework to help debugging

Log4j

--Functionality
Todo -> object
TodoService includes all the basic operations for Todo. By using the dependency injection, the @service is automatically wired in the controller.

DeleteTodo

UpdateTodo

--SpringMVC security
Set the role and accessibility

--Internationalization with SpringMVC
when typing url  http://localhost:8080 default language is English
when typing url http://localhost:8080?language=fr. language will switch to french
