<%@page import="model.Shoppingcart"%>
<%@page import="service.ShoppingcartService"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deletesc.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:useBean id="shoppingcart" class="model.Shoppingcart"></jsp:useBean>
  <jsp:useBean id="shoppingcartService" class="service.ShoppingcartService"></jsp:useBean>
  <body>
  <%
		int id = Integer.valueOf(request.getParameter("id"));
		Shoppingcart pro = shoppingcartService.querystatescID(id);	
	
		if(shoppingcartService.deletesc(pro))
			out.print("success");
		else
			out.print("failure");
	%>
  </body>
</html>
