<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<title>List of Todo</title>
</head>
<body>
<g:link action="create">Create</g:link>
<h1> Todo List</h1>
<ul>
<g:each in="${todoInstanceList}" var="todo">
<li><g:link action="show" id="${todo.id}">${fieldValue(bean:todo, field:"name")}</g:link></li>
</g:each>
</ul>
</body>
</html>