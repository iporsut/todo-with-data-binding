<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<title>Show Todo</title>
</head>
<body>
<g:link action="index">List Todo</g:link>
<g:link action="edit" id="${todoInstance.id}">Edit</g:link>
<h1>Show Todo ${fieldValue(bean: todoInstance, field: "name")}</h1>

<h2>Task List</h2>
<ul id="taskList">
	<g:each in="${todoInstance?.tasks}" var="task">
		<li>${fieldValue(bean: task, field: "description")}</li>
	</g:each>
</ul>
</body>
</html>