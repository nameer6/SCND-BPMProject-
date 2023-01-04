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
    background-color: black;
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



	<h3>Enter More Details To confirm order</h3>
	<br/>
	<a href="AddProduct.jsp"><button>Add Product</button></a>
	<button onclick="confirmOrder()">Confirm Order</button>

	<div class="container">
		<div class="card-header">All Products</div>
			<div class="row">
				<%
					FetchProducts app2 = new FetchProductsProxy().getFetchProducts();
					Products[] app = app2.getproductInfo();
					double id_arr[]=null;
					for(int i=0 ; i<app.length ; i++){
				%>
					    <div class="column">
						   	<div class="cards" style="width: 18rem;">
								<img class="card-img-top" src="images/101.jpg" alt="Card image cap">
						 	 	<div class="card-body">
						    		<h5 class="card-title"><%=app[i].getName() %></h5>
						    		<h6 class="price"><%=app[i].getPrice() %></h6>
						    		<a  href="/product/<%=app[i].getId() %>" class="price">Order Now</a>
						    		
						    	</div>
						    </div>
						</div>
					    
				<% 
                 }
					
                 %>   
   		</div>
   </div>

</body>
</html>

<script>
	function confirmOrder(){
		alert("hello");
	}
</script>