<%-- 
    Document   : trainers
    Created on : Jul 10, 2021, 1:22:59 AM
    Author     : Theodore
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainers</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="/css/style.css" >
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.js"></script>
    </head>
    <body id="body2">
        <h1>Trainers List</h1>
        <a href="/trainers/new" class="btn btn-primary">New Trainer</a>&nbsp;<a href="/home" class="btn btn-warning btn-lg float-end">Go back</a>
        <table id="trainers_table" class="display" style="width:80%">
            <thead>
            <td>ID</td>
            <td>FirstName</td>
            <td>LastName</td>
            <td>Subject</td>
        </thead>
        <tbody>
            <c:forEach items="${trainers}" var="trainer">  
                <tr>
                    <td><c:out value="${trainer.id}"/></td>
                    <td>${trainer.firstName}</td>
                    <td>${trainer.lastName}</td>
                    <td>${trainer.subject}</td>
                    <td><a href="/trainers/edit/${trainer.id}" class="btn btn-info">Edit</a>&nbsp;<a href="/trainers/delete/${trainer.id}" class="btn btn-danger">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
        </table>
        <script>
        $(document).ready(function () {
            $('#trainers_table').DataTable();
        });
    </script>        
    </body>
</html>
