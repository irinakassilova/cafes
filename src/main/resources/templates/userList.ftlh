<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<p>List of users</p>
<table>
    <thead>
    <tr>
        <th>Email: </th>
        <th>Role: </th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
        <tr>
            <td>${user.email}</td>
            <td>${user.role}</td>
            <td><a href="manager/${user.id}">edit</a></td>
        </tr>

    </#list>
    </tbody>
</table>
</body>
</html>