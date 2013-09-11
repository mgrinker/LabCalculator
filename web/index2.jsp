<%-- 
    Document   : index2
    Created on : Sep 11, 2013, 3:31:46 PM
    Author     : Michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css" type="text/css"/>
        <title>Calculator</title>
    </head>
    <body>
        <div id="content">
             <%
                String recAnswer = "";
                String cirAnswer = "";
                String triAnswer = "";
                
                String calcType = "No Calculator Type";
                Object calcTypeObj = request.getAttribute("calcType");
                if(calcTypeObj !=null) {
                    calcType = calcTypeObj.toString();
                }

                if(calcType.equalsIgnoreCase("rectangle")) {
                    Object recAnswerObj = request.getAttribute("answer");
                    if(recAnswerObj != null) {
                        recAnswer = recAnswerObj.toString();
                    }
                }
                if(calcType.equalsIgnoreCase("circle")) {
                    Object cirAnswerObj = request.getAttribute("answer");
                    if(cirAnswerObj != null) {
                        cirAnswer = cirAnswerObj.toString();
                    }
                }
                if(calcType.equalsIgnoreCase("triangle")) {
                    Object triAnswerObj = request.getAttribute("answer");
                    if(triAnswerObj != null) {
                        triAnswer = triAnswerObj.toString();
                    }
                }
        %>
            
        <h1>Calculators</h1>
            <hr/>
            
            <br/><br/>
            <form id="rectangleForm" class="form" name="rectangleForm" method="POST" action="RectangleController2">
                <table>
                    <tr>
                        <th colspan="2">Calculate Area of a Rectangle</th>                       
                    </tr>
                    
                    <tr>
                        <td><label>Input width</label></td>
                        <td><input type="text" id="width" name="width"></td>
                    </tr>
                    
                    <tr>
                        <td><label>Input length</label></td>
                        <td><input type="text" id="length" name="length"></td>
                    </tr>
                    
                    <tr>
                        <td><input id="areaSubmit" type="submit" value="Get Area"></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td><%= recAnswer %></td>
                    </tr>
                </table>
            </form>
            
            <br/><br/>
            <form id="circleForm" class="form" name="circleForm" method="POST" action="CircleController2">
                <table>
                    <tr>
                        <th colspan="2">Calculate Area of a Circle</th>                       
                    </tr>
                    
                    <tr>
                        <td><label>Input radius</label></td>
                        <td><input type="text" id="radius" name="radius"></td>
                    </tr>
                                        
                    <tr>
                        <td><input id="areaSubmit" type="submit" value="Get Area"></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td><%= cirAnswer %></td>
                    </tr>
                        
                </table>
            </form>
            
            <br/><br/>
            <form id="triangleForm" class="form" name="triangleForm" method="POST" action="TriangleController2">
                <table>
                    <tr>
                        <th colspan="2">Calculate Missing side of right triangle</th>                       
                    </tr>
                    
                    <tr>
                        <td><label>Input side 1</label></td>
                        <td><input type="text" id="side1" name="side1"></td>
                    </tr>
                           
                    <tr>
                        <td><label>Input side 2</label></td>
                        <td><input type="text" id="side2" name="side2"></td>
                    </tr>
                    <tr>
                        <td><input id="areaSubmit" type="submit" value="Get value"></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td><%= triAnswer %></td>
                    </tr>
                </table>
            </form>
        </div>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    </body>
</html>
