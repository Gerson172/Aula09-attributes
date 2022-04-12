<%-- 
    Document   : index
    Created on : 11 de abr. de 2022, 20:12:20
    Author     : Fatec
--%>

<%
    if(request.getParameter("app-count-inc") != null){
        if(application.getAttribute("counter") == null){
            application.setAttribute("counter", 0);
        }
        int counter = (int)application.getAttribute("counter");
        application.setAttribute("counter",counter+1);
        response.sendRedirect(request.getRequestURI());
    }

    if(request.getParameter("session-count-inc") != null){
        if(session.getAttribute("counter") == null){
            session.setAttribute("counter", 0);
        }
        int counter = (int)session.getAttribute("counter");
        session.setAttribute("counter",counter+1);
        response.sendRedirect(request.getRequestURI());
    }
    
    if(request.getParameter("req-count-inc") != null){
        if(request.getAttribute("counter") == null){
            request.setAttribute("counter", 0);
        }
        int counter = (int)request.getAttribute("counter");
        request.setAttribute("counter",counter+1);
        //response.sendRedirect(request.getRequestURI());
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atributos - JavaEE</title>
    </head>
    <body>
        <h1>Java EE</h1>
        <h2>Atributos</h2>
        <hr>
        <h3>de Aplicação</h3> <!-- implementa e guarda -->
        <form>
            <label>Contador: </label>
            <%= application.getAttribute("counter") %>
            <input type="submit" name="app-count-inc" value="+">
        </form>
        <hr> 
        <h3>de sessão</h3> <!-- identificador -->
        <form>
            <label>Contador: </label>
            <%= session.getAttribute("counter") %>
            <input type="submit" name="session-count-inc" value="+">
            <%= session.getId()%> 
        </form>     
        <h3>de requisição</h3> <!-- só persiste durante a requisição -->
        <form>
            <label>Contador: </label>
            <%= request.getAttribute("counter") %>
            <input type="submit" name="req-count-inc" value="+">
        </form>
    </body>
</html>
