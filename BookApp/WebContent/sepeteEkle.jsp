<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>BookApp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://fonts.googleapis.com/css?family=Chicle|Indie+Flower|Pacifico" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<link href="css/sepet.css" type="text/css" rel="stylesheet">
  <style>
   
  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h1 class="title center">My Basket</h1>
      <ul class="nav nav-pills nav-stacked hizala">
        
       <% if(session.getAttribute("book1") != null){ %>
					<tr class="tr1" style="height:100px" >
						<td >Macbet</td>
						<td >Shakespeare</td></br>
					</tr>
					<% } if (session.getAttribute("book2") != null){ %> 
					<tr style="height:100px">
						<td style="line-height:100px;font-size:15px">The Brothers Karamazov</td>
						<td style="line-height:100px;font-size:15px">Dostoyevski</td></br>
					</tr>
					<% } if (session.getAttribute("book3") != null){ %> 
					<tr style="height:100px">
						<td style="line-height:100px;font-size:15px">Djamilya </td>
						<td style="line-height:100px;font-size:15px">Chingiz Aytmatov</td></br>
					</tr>
					<% } if (session.getAttribute("book4") != null){ %> 
					<tr style="height:100px">
						<td style="line-height:100px;font-size:15px">War And Peace</td>
						<td style="line-height:100px;font-size:15px">Tolstoy</td></br>
					</tr>
					<% }%>
	   		<form action="destroy" method="post" class="btn-centres">
	   			<input type="submit" value="Clear" class="btn-purple"/>
	   		</form>
        
      </ul><br>
    </div>

    <div class="col-sm-9">
      <h2><small  class="color title">Hicran's Book World</small>
     
      </h2>
      <div class="ortala">
       <form action="exit" method="post" class="sola">
	   			<button type="submit" class="buton btn btn-purple" >EXIT</button>

	   		</form>
      </div>
      <table class="table table-hover space">
  <thead>
    <tr>
      <th scope="col" class="color"><h3>#</h3></th>
      <th scope="col" class="color title"><h3>Book Name</h3></th>
      <th scope="col" class="color title"><h3>Author</h3></th>
      <th scope="col" class="color title"><h3>Price</h3></th>
      <th scope="col" class="color title"><h3>Add The Basket</h3></th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" class="color">1</th>
      <td>Macbet</td>
      <td>Shakespeare</td>
      <td>25 $</td>
      <td>
      	<form action="MainPage" method="post" >
      	<input type="hidden" name="id" value="1">
			<button type="submit" class="buton btn btn-purple" >ADD</button>
		</form>
	  </td>
    </tr>
    <tr>
      <th scope="row" class="color">2</th>
      <td>The Brothers Karamazov</td>
      <td>Dostoyevski</td>
      <td>30 $</td>
      <td>
		<form action="MainPage" method="post" >
		<input type="hidden" name="id" value="2">
			<button type="submit" class="buton btn btn-purple" >ADD</button>
		</form>
	  </td>
    </tr>
    <tr>
      <th scope="row" class="color">3</th>
      <td>Djamilya </td>
      <td>Chingiz Aitmatov</td>
      <td>49 $</td>
      <td>	
      	<form action="MainPage" method="post" >
      	<input type="hidden" name="id" value="3">
			<button type="submit" class="buton btn btn-purple" >ADD</button>
		</form>
      </td>
      
    </tr>
    <tr>
      <th scope="row" class="color">4</th>
      <td>War and Peace </td>
      <td>Tolstoy</td>
      <td>20 $</td>
      <td>
      	<form action="MainPage" method="post" >
      	<input type="hidden" name="id" value="4">
			<button type="submit" class="buton btn btn-purple" >ADD</button>
		</form>
      </td>
      
    </tr>
  </tbody>
</table>

    </div>
  </div>
</div>

</body>
</html>