<%-- 
    Document   : index
    Created on : May 28, 2016, 11:52:30 AM
    Author     : MNI
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Weather Report| homepage</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost/rocities"
        user="root"  password="parola11"/>
 
        <sql:query dataSource="${snapshot}" var="result">
        SELECT * from cities;
        </sql:query>
        
        <h1>Welcome to Weather Report!</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>Weather Raport provides accurate weather prognose.</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <form action="response.jsp">
                            <strong>Select a city below:</strong>
                            <select name="city_id">
                                <c:forEach var="row" items="${result.rows}">
                                    <option value="${row.City}">${row.City}</option>
                                </c:forEach>
                            </select>
                            <input type="submit" value="submit" name/>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
