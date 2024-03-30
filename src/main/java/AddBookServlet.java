
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import java.io.PrintWriter; 

public class AddBookServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	PrintWriter out = response.getWriter();
    	
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        int year = Integer.parseInt(request.getParameter("year"));
        System.out.println(title);
        System.out.println(author);
        System.out.println(year);
        Book book = new Book(title, author, year);
//        System.out.println(book);
        ServletContext context = getServletContext();
        ArrayList<Book> bookList = (ArrayList<Book>) context.getAttribute("bookList");
        bookList.add(book);
        if (bookList == null) {
            bookList = new ArrayList<Book>();
            context.setAttribute("bookList", bookList);
//            out.println();
        }

        bookList.add(book);

        response.sendRedirect("viewBooks.jsp");
    }
}
