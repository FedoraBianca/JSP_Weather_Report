<%-- 
    Document   : response
    Created on : May 28, 2016, 12:04:32 PM
    Author     : MNI
--%>
<%@ page import="java.io.*,java.util.*,java.net.*,net.aksingh.owmjapis.*,org.json.JSONException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! 
    String srcCity,maxTemperature,minTemperature,pressure,humidity,percentageOfClouds,windDegree,WindSpeed,sunriseTime,sunsetTime;
    OpenWeatherMap owm = new OpenWeatherMap(OpenWeatherMap.Units.METRIC,"050355886f1a877aedb52abd1a036d3c");
    
%>
<%
    srcCity = request.getParameter("city_id");
    CurrentWeather cwd = owm.currentWeatherByCityName(srcCity);
        // checking data retrieval was successful or not
        if (cwd.isValid()) {
            if (cwd.getMainInstance().hasMaxTemperature())
            	maxTemperature = cwd.getMainInstance().getMaxTemperature() + " C";
            if (cwd.getMainInstance().hasMinTemperature())
            	minTemperature = cwd.getMainInstance().getMinTemperature() + " C";
            if (cwd.getMainInstance().hasPressure())
            	pressure = cwd.getMainInstance().getPressure()+" ";
            if (cwd.getMainInstance().hasHumidity())
            	humidity = cwd.getMainInstance().getHumidity()+ "%";
                
        }
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
            <td><strong>Max Temperature: </strong></td>
                    <td><span style="font-style:italic;">
                        <%=maxTemperature %>
                    </span></td>
        </tr>
        <tr>
            <td><strong>Min Temperature: </strong></td>
             <td><span style="font-style:italic;">{placeholder}</span></td>
        </tr>
    
    </tbody>
</table>
    </body>
</html>
