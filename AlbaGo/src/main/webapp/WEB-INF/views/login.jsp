<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"><title>로그인</title>
  
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-primary">
  <div class="row text-center" style="width: 135%">
    <div class="container" >
      <div class="card o-hidden border-0 shadow-lg my-3 col-lg-6 center-block ">

        <div class="col-lg-12">
          <div class="p-5">
            <div class="text-center">
             <h2 class="card-title text-center" style="color:#113366;">로그인 폼</h2>
           </div>
           <div class="card-body">
            <form class="form-signin" method="POST" onSubmit="logincall();return false">
              <h5 class="form-signin-heading">로그인 정보를 입력하세요</h5>
              <label for="inputEmail" class="sr-only">Your ID</label>
              <input type="text" id="uid" class="form-control" placeholder="Your ID" required autofocus><BR>
              <label for="inputPassword" class="sr-only">Password</label>
              <input type="password" id="upw" class="form-control" placeholder="Password" required><br>

              <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">로 그 인</button>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
</body>
</html>