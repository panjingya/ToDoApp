# ToDoApp Using SpringMVC 

--SpringMVC Process

    Requests goes to DispatcherSelvet, and DispatcherServlet will find the proper controller to handle the request, the method in   controller will be invoked, return a String and model back to the DispatcherServlet.

    If there is no @ResponseBody means the String stands for a view name, so DispatcherServlet will find the viewResolver(defined in spring context configuration) to generate the complete view name.

    Using the view name to find in the view templates and response back with JSP.

--ToDoApp workflow

    1. Enter url http://localhost:8080/login, and username:May password:123

    2. By clicking hyperlink: manage your todos, direct you to the list-todos.jsp

    3. In the list-todos.jsp, the basic operation can be done: addition, deletion, modification

    4. Logout the system by clicking the right-upper corner link. Every user need to login before doing any operations on the system.Logout will clear the recoprd.

    Todo -> object
    TodoService includes all the basic operations for Todo. By using the dependency injection, the @service is automatically wired in the controller.

--Framework to help debugging: Log4j

--SpringMVC security: Set the role and accessibility to the url

--Internationalization with SpringMVC

    when typing url  http://localhost:8080 default language is English

    when typing url http://localhost:8080?language=fr. language will switch to french
