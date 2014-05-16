<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<title>Create Todo</title>
</head>
<body>
<g:link action="index">List Todo</g:link>
<h1>Create Todo</h1>

<g:form name="createTodo" action="save">
	<label>
	Name :</label> 
	<input type="hidden" name="id" value="${todoInstance?.id}" />
	<g:textField name="name" value="${todoInstance?.name}" />

	<h2>Task List</h2>
	<ul id="taskList">

	</ul>
	<button id="addTask" type="button">Add Task</button> <br />
	<input type="submit" />
</g:form>
<script type="text/javascript">
	var taskCount = 0;
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