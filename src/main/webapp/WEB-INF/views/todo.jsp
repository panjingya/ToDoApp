<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
	<H1>Add Todo</H1>
	<form:form method="post" commandName="todo">
	<form:hidden path="id"/>
	<form:hidden path="user"/>
		<fieldset class="form-group">
			<form:label path="desc">Description</form:label>
			<form:input type="text" path="desc" class="form-control" required="required" />
			<form:errors path="desc" cssClass="text-warning" />
		</fieldset>
		
		<fieldset class="form-group">
			<form:label path="targetDate">Target Date</form:label>
			<form:input type="text" path="targetDate" class="form-control" required="required" />
			<form:errors path="targetDate" cssClass="text-warning" />
		</fieldset>
		<input class="btn btn-success" type="submit" value="Submit" >
	</form:form>
</div>
<%@ include file="common/footer.jspf" %>