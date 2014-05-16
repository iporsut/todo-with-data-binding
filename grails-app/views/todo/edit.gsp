<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<title>Edit Todo</title>
</head>
<body>
<g:link action="index">List Todo</g:link>
<h1>Edit Todo ${fieldValue(bean: todoInstance, field: "name")}</h1>

<g:form name="editTodo" action="update" method="PUT">
	<label>
	Name :</label> 
	<input type="hidden" name="id" value="${todoInstance?.id}" />
	<g:textField name="name" value="${todoInstance?.name}" />

	<h2>Task List</h2>
	<ul id="taskList">
	<g:each in="${todoInstance?.tasks}" var="task" status="index">
		<li>
		<g:textField name="tasks[${index}].description" value="${fieldValue(bean: task, field: 'description')}" />
		</li>
	</g:each>
	</ul>
	<button id="addTask" type="button">Add Task</button> <br />
	<input type="submit" />
</g:form>
<script type="text/javascript">
	var taskCount = ${todoInstance?.tasks.size()};
	$("#addTask").on('click', function() {
		$("#taskList").append(
			$("<li>").append(
				$("<input>").
				attr("name",'tasks[' + taskCount + '].description').
				attr("type",'text')
			)
		)
		taskCount++
	})
</script>
</body>
</html>