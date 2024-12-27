package com.amish;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class CustomerLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        // Get input parameters from the request
        String username = request.getParameter("email");
        String password = request.getParameter("password");
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            // Get connection from DBUtil
            conn = DBUtil.getConnection();
            // Prepare SQL query
            String sql = "SELECT * FROM customer WHERE email=? AND password=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            // Execute the query
            rs = stmt.executeQuery();
            if (rs.next()) {
                // Login successful
                out.println("Login successful. Welcome, " + username + "!");
                HttpSession session = request.getSession();
                
                session.setAttribute("Username", username);
                response.sendRedirect("CustomerHome.jsp");
            } else {
                // Login failed
            System.out.println("Invalid username or password."+username+" "+password);
            
                out.println("Invalid username or password.");
                response.sendRedirect("customer.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("An error occurred while processing your request.");
        } finally {
            // Close the database resources
            DBUtil.closeConnection(conn);
            try {
                if (stmt != null) stmt.close();
                if (rs != null) rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            out.close();
        }
    }
}
