<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Location</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
          crossorigin="anonymous">
</head>
<body>
<main>
    <div class="container">
        <form action="updateLoc" method="post">
            <label for="id">Id:</label>
            <input id="id" type="text" name="id" value="${location.id}" readonly/>
            <br>
            <label for="code">Code:</label>
            <input id="code" type="text" name="code" value="${location.code}"}/>
            <br>
            <label for="name">Name:</label>
            <input id="name" type="text" name="name" value="${location.name}"/>
            <br>
            <label for="type">Type:</label>
            <div id="type">
                <br>
                <label for="urban">Urban</label>
                <input id="urban" type="radio" name="type" value="URBAN" ${location.type=='URBAN'?'checked':''}/>
                <br>
                <label for="urban">Rural</label>
                <input id="rural" type="radio" name="type" value="RURAL" ${location.type=='RURAL'?'checked':''}/>
            </div>
            <br>

            <input class="btn btn-primary" type="submit" value="save"/>
        </form>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
        crossorigin="anonymous"></script>
</body>
</html>