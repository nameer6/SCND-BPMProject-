<%@ page import="main.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ReceiveOrder ro = new ReceiveOrderProxy().getReceiveOrder();

// FetchProducts app2 = new FetchProductsProxy().getFetchProducts();
// Products[] app = app2.getproductInfo();
// double id_arr[]=null;

String customerid = request.getParameter("Customerid");
String name = request.getParameter("Name");
Double price = Double.parseDouble(request.getParameter("Price"));
Double id = Double.parseDouble(request.getParameter("id"));
String Address = request.getParameter("Address");
String OrderQty = request.getParameter("OrderQty");

ro.addOrderInfo(Integer.parseInt(customerid),Integer.parseInt(OrderQty) ,price.intValue() ,id.intValue() );
%>

<h2>Order Confirmed</h2>

</body>
</html>