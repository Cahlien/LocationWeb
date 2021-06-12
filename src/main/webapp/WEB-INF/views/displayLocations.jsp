<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Locations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
          crossorigin="anonymous">
</head>
<body>
<main>
    <div class="container">
        <div class="row">
            <div class="col">id</div>
            <div class="col">code</div>
            <div class="col">name</div>
            <div class="col">type</div>
            <div class="col"></div>
            <div class="col"></div>
        </div>
        <c:forEach items="${locations}" var="location">
            <div class="row">
                <div class="col">${location.id}</div>
                <div class="col">${location.code}</div>
                <div class="col">${location.name}</div>
                <div class="col">${location.type}</div>
                <div class="col"><a href="showUpdate?id=${location.id}">edit</a></div>
                <div class="col"><a href="deleteLocation?id=${location.id}">delete</a></div>
            </div>
        </c:forEach>
    </div>
    <a href="showCreate">Add Location</a>
</main>
</body>