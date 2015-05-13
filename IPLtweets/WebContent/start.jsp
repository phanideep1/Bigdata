<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.awt.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.jfree.chart.*"%>
<%@ page import="org.jfree.chart.entity.*"%>
<%@ page import="org.jfree.data.general.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PIE CHART</title>
</head>
<body>



JFreeChart chart = ChartFactory.createPieChart("Opinion Polls",pieDataset,true,true,false);
ChartUtilities.saveChartAsJPEG(new File("path/piechart.png"),chart,400, 300);

%>

<IMG SRC=path/"piechart.png" WIDTH="600" HEIGHT="400" BORDER="0"
        USEMAP="#chart">
</body>
</html>