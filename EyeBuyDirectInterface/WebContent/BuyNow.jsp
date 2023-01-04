<%@ page import="main.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body>


<%
AddCustomer ac = new AddCustomerProxy().getAddCustomer();
String name2=request.getParameter("Name");
System.out.println(name2);
String phoneno=request.getParameter("PhoneNumber");
String Cnic=request.getParameter("CNIC");
String email=request.getParameter("Email");
String gender = request.getParameter("Gender");

ac.addCustomerInfo(name2, phoneno, Cnic, email, gender);

%>


<style>
h2{
text-align:center;
color:black;
text-decoration:underline;
}

.container{
display:flex;
align-items:center;
justify-content:center;
}


.container1{
background-color: grey;
width:55%;
height:87vh;
}

.items{
margin-top:10px;
margin-left:90px

}

label{
color:white;
margin-right:70px
}

.textarea{
display:flex;
align-items:center;
}


</style>



<h2>Enter Following Details</h2>
<form action="Homepage2.jsp" >
<div class ="container">
<div class="container1">
<div class="items">
</br>
<label>Enter Your Name </label>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<input style = "margin:-3px" name="Name" type = "text" ></input>
<br>
<br>
<label>Enter Phone Number</label>
  &nbsp; &nbsp; &nbsp; &nbsp; <input name="PhoneNo" type = "text" ></input>
</br>
<br>

</br>
<br>
<label>Enter Your CNIC</label>
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  <input name="CNIC" type = "text"></input>
<br>
<br>

<br>
<br>
<label>Enter Your Email</label>
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  <input style="margin-left:3px" name="Email" type = "text" ></input>
<br>
<br>
<label>Select Gender</label>
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <select style="margin-left:2px" name="Gender">
<option ></option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>
<br>
<br>

<button type="submit">Register</button>
</div>
</div>
</div>
</form>

</body>
</html>