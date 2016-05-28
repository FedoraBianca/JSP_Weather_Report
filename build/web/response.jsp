<%-- 
    Document   : response
    Created on : May 28, 2016, 12:04:32 PM
    Author     : MNI
--%>
<%@ page import="java.io.*,java.util.*,java.net.*,net.aksingh.owmjapis.*,org.json.JSONException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! 
    String srcCity,maxTemperature,minTemperature,pressure,humidity,percentageOfClouds,windDegree,windSpeed,sunriseTime,sunsetTime;
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
                        if(cwd.hasCloudsInstance())
            if(cwd.getCloudsInstance().hasPercentageOfClouds())
                percentageOfClouds = cwd.getCloudsInstance().getPercentageOfClouds() + "%";
            if(cwd.hasWindInstance())
                if(cwd.getWindInstance().hasWindDegree())
            	    windDegree = cwd.getWindInstance().getWindDegree()+" ";
            if(cwd.hasWindInstance())
            	if(cwd.getWindInstance().hasWindSpeed())
                    windSpeed = cwd.getWindInstance().getWindSpeed() + "km/h";
            if(cwd.hasSysInstance())
            	sunriseTime = cwd.getSysInstance().getSunriseTime() + " ";
            if(cwd.hasSysInstance())
            	sunsetTime = cwd.getSysInstance().getSunsetTime() + " ";    
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
                    <td><span style="font-style:italic;">
                        <%=minTemperature %>
                    </span></td>
        </tr>
        <tr>
            <td><strong>Pressure: </strong></td>
                    <td><span style="font-style:italic;">
                        <%=pressure %>
                    </span></td>
        </tr>
        <tr>
            <td><strong>Humidity: </strong></td>
                    <td><span style="font-style:italic;">
                        <%=humidity %>
                    </span></td>
        </tr>
        <tr>
            <td><strong>Percentage Of Clouds: </strong></td>
                    <td><span style="font-style:italic;">
                        <%=percentageOfClouds %>
                    </span></td>
        </tr>
        <tr>
            <td><strong>Wind Degree: </strong></td>
                    <td><span style="font-style:italic;">
                        <%=windDegree %>
                    </span></td>
        </tr>
        <tr>
            <td><strong>Wind Speed: </strong></td>
                    <td><span style="font-style:italic;">
                        <%=windSpeed %>
                    </span></td>
        </tr>
        <tr>
            <td><strong>Sunrise Time: </strong></td>
                    <td><span style="font-style:italic;">
                        <%=sunriseTime %>
                    </span></td>
        </tr>
        <tr>
            <td><strong>Sunset Time: </strong></td>
                    <td><span style="font-style:italic;">
                        <%=sunsetTime %>
                    </span></td>
        </tr>
    
    </tbody>
</table>
    </body>
</html>
