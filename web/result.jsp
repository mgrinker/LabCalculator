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
        <div>
        <h1>Calculator Results</h1>
        <br/><br/><br/>
        <h1>
        <%
           
                String calcArea = "No area available";
                Object obj = request.getAttribute("area");
                if(obj != null) {
                    calcArea = obj.toString();
                }
                out.println("The area is " + calcArea + " sq. units");  
        %>
        </h1>
        
        <a href="index.html">Back to home page</a>
        
        
        </div>
    </body>
</html>
