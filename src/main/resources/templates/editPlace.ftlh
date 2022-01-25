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
<form action="/manager" method="post">
    <input type="text" name="" value="${place.name}">
        <div>
            <label>
                <input type="checkbox" name="${place}" ${place.description}>${place}</label>
        </div>
    </#list>
    <input type="hidden" value="${place.id}" name="placeId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>
</form>
</body>
</html>