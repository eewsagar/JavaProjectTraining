package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Registration")
public class Registration extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        try {

            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            TimeZone estTime = TimeZone.getTimeZone("Asia/Kolkata");
                   dateFormat.setTimeZone(estTime);
            String Addeddate = dateFormat.format(date);

            String fname = request.getParameter("fname");// this is the name attribute in the html
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String password = request.getParameter("password");
            String contactNo = request.getParameter("contactNo");

            Connection con = DbConnection.getConnection();

            Statement st = con.createStatement();
//            Statement stat = con.createStatement();

            ResultSet rs = st.executeQuery("select * from user where email='" + email + "'");

            if (rs.next()) {

                response.sendRedirect("registration.jsp?Exist=Exist");
            } else {

                int r = st.executeUpdate("insert into user (fname,email,lname,gender,password,mobile) values('" + fname + "','" + email + "','" + lname + "','" + gender + "','" + password + "','" + contactNo + "')");
                if (r > 0) {

                    response.sendRedirect("success.jsp?");// transver the page to the definete url

                }

            }
        } catch (Exception e) {
            e.getMessage();
        } finally {
            out.close();

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
