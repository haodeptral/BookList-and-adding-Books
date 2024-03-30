<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Books</title>
</head>
<body>
    <h2>Book List</h2>
    <table border="1">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Year</th>
        </tr>
        <% 
            ServletContext context = request.getServletContext();
            ArrayList<Book> bookList = (ArrayList<Book>) context.getAttribute("bookList");
            if (bookList != null) {
                for (Book book : bookList) {
        %>
        <tr>
            <td><%= book.getTitle() %></td>
            <td><%= book.getAuthor() %></td>
            <td><%= book.getYear() %></td>
        </tr>
        <% 
                }
            }
        %>
    </table>
    <a href="addBook.jsp">Add Book</a>
</body>
</html>
