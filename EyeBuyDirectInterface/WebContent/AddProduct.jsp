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
<form action="HomePage.jsp" >
<div class ="container">
<div class="container1">
<div class="items">
</br>
<label>Enter Product Id</label>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<input style = "margin:-3px" name="Id" type = "text" ></input>
<br>
<br>
<label>Enter Product Name</label>
  &nbsp; &nbsp; &nbsp; &nbsp; <input name="Name" type = "text" ></input>
</br>
<br>
<div class="textarea">
<label>Enter Product Description</label>
<textarea name="Description" rows="5" cols="33" ></textarea>
</div>
</br>
<br>
<label>Enter Product Type</label>
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  <input name="Type" type = "text"></input>
<br>s
<br>
<label>Select Category ID</label>
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <select style="margin-left:2px" name="CategoryID">
<option ></option>
<option value="101">101</option>
<option value="102">102</option>
</select>
<br>
<br>
<label>Enter Product Size</label>
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  <input style="margin-left:3px" name="Size" type = "text" ></input>
<br>
<br>
<label>Enter Product Weight</label>
&nbsp; &nbsp;   <input style="margin-left:3.5px" name="Weight" type = "text" ></input>
<br>
<br>
<label>Enter Product Color</label>
&nbsp; &nbsp;  &nbsp; <input style="margin-left:5px" name="Color" type = "text" ></input>
<br>
<br>
<label>Enter Standard-Cost</label>
&nbsp; &nbsp; &nbsp; <input style="margin-left:5px" name="StandardCost" type = "text" "></input>
<br>
<br>
<label>Enter ListPrice</label>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input style="margin-left:5px" name="ListPrice" type = "text" "></input>
<br>
<br>
<button type="submit">Add Product</button>
</div>
</div>
</div>
</form>

</body>
</html>