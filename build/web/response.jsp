<%-- 
    Document   : response
    Created on : May 28, 2016, 12:04:32 PM
    Author     : MNI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! 
    String srcCity;
%>
<%
    srcCity = request.getParameter("city_id");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Weather Report| prognose</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <table border="0">
    <thead>
        <tr>
            <th colspan="2">
                <%=srcCity %>
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><strong>Description: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">{placeholder}</span></td>
        </tr>
        <tr>
            <td><strong>Counselor: </strong></td>
            <td>{placeholder}
                <br>
                <span style="font-size:smaller; font-style:italic;">
                member since: {placeholder}</span>
            </td>
        </tr>
        <tr>
            <td><strong>Contact Details: </strong></td>
            <td><strong>email: </strong>
                <a href="mailto:{placeholder}">{placeholder}</a>
                <br><strong>phone: </strong>{placeholder}
            </td>
        </tr>
    </tbody>
</table>
    </body>
</html>
