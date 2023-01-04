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





<h1>Welcome To Eye Buy Direct</h1>
<br/>
<a href="AddProduct.jsp"><button>Add Product</button></a>

<div class="container">
		<div class="card-header">All Products</div>
			<div class="row">
					    <div class="column">
				<%
				    AddCustomer ac = new AddCustomerProxy().getAddCustomer();
				   String name = request.getParameter("Name");
				   String phoneNumber = request.getParameter("PhoneNo");
				   String CNIC = request.getParameter("CNIC");
				   String email = request.getParameter("Email");
				   String gender = request.getParameter("Gender");
				    ac.addCustomerInfo(name, phoneNumber, CNIC, email, gender);
					FetchProducts app2 = new FetchProductsProxy().getFetchProducts();
					Products[] app = app2.getproductInfo();
					double id_arr[]=null;
					for(int i=0 ; i<app.length ; i++){
				%>
				
						   	<div class="cards" style="width: 18rem;">
								<img class="card-img-top" src="images/101.jpg" alt="Card image cap">
						 	 	<div class="card-body">
						    		<h5 class="card-title"><%=app[i].getName() %></h5>
						    		<h6 class="price"><%=app[i].getPrice() %></h6>
<!-- 						  <a  href="Order.jsp" class="price" ><button onclick="getname()">OrderNow</button></a> -->
						 <button type="button" class="btn btn-outline-success mx-auto" onCLick="Form<%=app[i].getId().intValue() + "()"%>">Order Now</button>
                      	
				<script>
					function Form<%=app[i].getId().intValue() + "()"%>
	                {
<%-- 						document.getElementById("Name").value = "<%=app[i].getName()%>"; --%>
<%-- 						document.getElementById("Price").value = "<%=app[i].getPrice()%>"; --%>
<%-- 						document.getElementById("Price").value = "<%=app[i].getPrice()%>"; --%>
			
//  						document.getElementById("theForm").submit();

						window.location="Order.jsp?Name=<%=app[i].getName() %>&Price=<%=app[i].getPrice() %>&id=<%=app[i].getId()%>&CustomerId=<%=request.getParameter("CNIC")%>"
					}
				</script>
						    		
						    	</div>
						    </div>
						</div>
						
						
					
					    
				<% 
                 }
					
                 %>   
       
   </div>
  
  </div>
  
 
  
</div>
   </div>
</div>

</div>
</body>
</html>