<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
</head>
<body>
    <div align = center>
    <h2>Add Book</h2>
    <form action="AddBookServlet" method="post">
    	<table>
        <tr><td>Title:</td> <td><input type="text" name="title"></td></tr>
        <tr><td>Author:</td> <td><input type="text" name="author"></td></tr>
        <tr><td>Year: </td><td><input type="text" name="year"></td></tr>
        <tr><td><input type="submit" value="Add Book"></td></tr>
    	</table>
    </form>
    </div>
</body>
</html>
