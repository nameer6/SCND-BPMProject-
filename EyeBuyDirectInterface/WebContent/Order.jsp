<%@ page import="main.*" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eye Buy Direct</title>

<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    list-style: none;
    text-decoration: none;
}

header{
    background-color: grey;
    color: white;
    height: 12vh;
}
nav {
    
}
ul {
    display: flex;
    align-items: center;
    justify-content:flex-end;
}
ul li {
    color: white;
    padding: 20px 40px 0px 0px;
    font-family: 'Lato', sans-serif;
}


ul li:hover {
    font-weight: bolder;
    font-size: 16px;

}

h1{
text-align:center;
margin-top:20px;
color:black;
}
column{
margin-top:50px;
}

.container {
width: 100vw;
height: 100vh;
font-size: 16px;
line-height: 1.4;
letter-spacing: 0.002em;
font-weight: 400;
font-style: normal;
}

.card-header{

font-size: 30px;
text-align: center;
text-transform: capitalize;
text-decoration: underline;
}

.cards{
width: 14rem;
text-align: center;
border: 0.2px solid #d2d2d2;
}
.card title{
z-index:1;
font-size:17px;
margin-top:-15px
}

.price{
font-size:14px;
}

button{
color: white;
background-color: #24A0ED;
font-size: 17px;
border-radius: 2px;
}
img{

width: 16.5rem;
}

.card-body{
position: relative;
top: -20px;
}

</style>

<header>
<nav>
<ul>
<li>Home
<li>About
<li>Contact
<li>Login
<li>Sign-up
</ul>
</nav>
</header>
</head>

<body>


<%
ReceiveOrder ro = new ReceiveOrderProxy().getReceiveOrder();

// FetchProducts app2 = new FetchProductsProxy().getFetchProducts();
// Products[] app = app2.getproductInfo();
// double id_arr[]=null;


String name = request.getParameter("Name");
Double price = Double.parseDouble(request.getParameter("Price"));
Double id = Double.parseDouble(request.getParameter("id"));
String customerid = request.getParameter("CustomerId");
%>


<h1>Welcome To Eye Buy Direct</h1>
<br/>

<h3> Product Name: <%=name %></h3>
<h3>ListPrice: <%=price %></h3>
<form id="form1" action="ConfirmOrder.jsp">
<input type = "hidden" name = "Name" id = "Name" />
<input type = "hidden" name = "Price" id = "Price" />
<input type = "hidden" name="id" id="id"/>
<input type = "hidden" name="Customerid" id="Customerid"/>
<div class ="container">
<div class="container1">
<div class="items">
</br>

<label>Enter Quantity</label>
  &nbsp; &nbsp; &nbsp; &nbsp; <input name="OrderQty"  id ="OrderQty" type = "text" ></input>
</br>
<br>

</br>
<br>
<div class="textarea">
<label>Enter Your Address</label>
<input id="Address" name="Address" rows="5" cols="33" ></input>
</div>

<br>
<br>
<label>Select Payment Mode</label>
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <select style="margin-left:2px" name="CategoryID">
<option ></option>
<option value="COD">COD</option>
<option value="OP">Online Payment</option>
</select>
<br>
<br>


<button type="submit" >Confirm Order</button>
</div>
</div>
</div>
</form>

<script type="text/javascript">
window.onload = function functionName() {
document.getElementById("Name").value="<%=name %>"
document.getElementById("Price").value="<%=price %>"
document.getElementById("id").value="<%=id %>"
document.getElementById("Customerid").value="<%=customerid%>"

}

// function abc(){
// 	console.log(document.getElementById("Address").value );
// 	console.log(document.getElementById("OrderQty").value );
<%-- 	window.location = "ConfirmOrder.jsp?Name=<%=name %>&Price=<%=price %>&id=<%=id %>&Customerid=<%=customerid%>&Address=" +  --%>
// 			document.getElementById("Address").value + "&OrderQty="  +  document.getElementById("OrderQty").value
	
// }

</script>


  
 
  
</div>
   </div>
</div>

</div>
</body>
</html>