<%-- 
    Document   : result
    Created on : Sep 9, 2013, 2:18:49 PM
    Author     : Michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css" type="text/css"/>
        <title>Results Page</title>
    </head>
    <body>
        <div id="content">
        <h1>Calculator Results Page 2</h1>
        <hr>
        <hr>
        <br/>
        
        <%
                String title = "No Title available";
                Object titleObj = request.getAttribute("title");
                if(titleObj != null) {
                    title = titleObj.toString();
                }
                String answer = "No answer available";
                Object answerObj = request.getAttribute("answer");
                if(answerObj != null) {
                    answer = answerObj.toString();
                }  
        %>
        
        <h1><%= title %></h1>
        <h1><%= answer %></h1>
        <br/>
        
        <a href="index_2.html" style="font-size: 20px;">Back to home page</a>
  
        </div>
    </body>
</html>
