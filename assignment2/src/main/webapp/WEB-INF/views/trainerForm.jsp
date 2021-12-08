<%-- 
    Document   : trainerForm
    Created on : Jul 11, 2021, 2:29:25 PM
    Author     : Theodore
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"        prefix="c" %>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
         <link rel="stylesheet" type="text/css" href="/css/style.css" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
                crossorigin="anonymous">
        </script>
    </head>
    <body id="body3">
    <h1>${h1}</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <f:form action="${action}" method="POST" modelAttribute="trainer">
                    <div class="col-md-4">
                        <label for="inputFirstName" class="form-label">First name</label>
                        <f:input path="firstName" type="text" class="form-control" />
                    </div>
                    <div class="col-md-4">
                        <label for="inputLastname" class="form-label">Last name</label>
                        <f:input path="lastName" type="text" class="form-control" />
                    </div>
                    <div class="col-md-4">
                        <label for="inputSubject" class="form-label">Subject</label>
                        <f:input path="subject" type="text" class="form-control" />
                    </div>    
                    <f:hidden path="id" readonly="true" />
                    <br>                    
                    <div class="col-md-4">
                        <input type="submit" value="${submit}" class="btn btn-primary btn-lg"/>
                        <a href="/trainers/" class="btn btn-danger btn-lg float-end">Cancel</a>
                    </div>
                </f:form>
            </div>
        </div>
    </div>
    </body>
</html>
