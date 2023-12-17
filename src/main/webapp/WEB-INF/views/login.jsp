<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> <title>Insert title here</title> <style>
    img, label { display:inline-block;}
    label{ width:130px}
    button{ background-color:blue; color:white;font-size:15px}
</style>
    <style>
        body {
            font-family: 'GowunDodum-Regular', sans-serif;
        }

        h1 {
            font-family: 'GowunDodum-Regular', sans-serif;
        }
    </style>
    <style>
        @font-face {
            font-family: 'GowunDodum-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunDodum-Regular.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
    </style>
</head>
<body>
<div style='width:100%;text-align:center;padding-top:100px'> <img src='../img/hotel.jpg' height="250">
    <h1>숙소모아</h1>
    <form method="post" action="loginOk">
        <div><label>User ID: </label><input type='text' name='userid' /></div> <div><label>Password: </label>
        <input type='password' name='password' /></div> <button type='submit'>login</button>
    </form>
</div>
</body>
</html>
